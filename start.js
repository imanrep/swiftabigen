#!/usr/bin/env node
const fs = require('fs')


const defaultProtocolFunction = (name, returnType, input, state) => {
  return `func ${name}(contractAddress: EthereumAddress ${input.map((data) => (`, ${data.name}: ${data.type}`)).join('')} ${state ? '' : ",from: EthereumAddress, gasPrice: BigUInt"}) async throws -> ${state ? returnType.length <= 1 ? returnType[0].type : `(${returnType.map((data, i) => (`${data.type}${returnType.length - 1 == i ? '' : ', '}`)).join('')})` : 'EthereumTransaction'}`
}
const defaultPublicFunction = (file, name, returnType, input) => {
  return `public func ${name}(contractAddress: EthereumAddress ${input.map((data, i) => (`, ${data.name}: ${data.type}`)).join('')}) async throws -> ${returnType.length <= 1 ? returnType[0].type : `(${returnType.map((data, i) => (`${data.type}${returnType.length - 1 == i ? '' : ', '}`)).join('')})`} {
    let function = ${file}Functions.${name}(contract: contractAddress ${input.map((data, i) => (`, ${data.name}: ${data.name}`)).join('')})
    let data = try await function.call(withClient: client, responseType: ${file}Responses.${name}Response.self)
    return ${returnType.length <= 1 ? 'data.value' : `(${returnType.map((data, i) => (`data.value${i != 0 ? i : ""}${returnType.length - 1 == i ? '' : ', '}`)).join('')})`}
}`
}

const defaultPublicPayableFunction = (file, name, input) => {
  return `public func ${name}(contractAddress: EthereumAddress ${input.map((data, i) => (`, ${data.name}: ${data.type}`)).join('')}, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = ${file}Functions.${name}(contract: contractAddress, from: from, gasPrice: gasPrice${input.map((data, i) => (`, ${data.name}: ${data.name}`)).join('')})
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = ${file}Functions.${name}(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas${input.map((data, i) => (`, ${data.name}: ${data.name}`)).join('')})
    let data = try function.transaction()
    return data
}`
}
const defaultExtensionFunction = (name, returnType, input) => {
  return `public func ${name}(contractAddress: EthereumAddress, ${input.map((data, i) => (`${data.name}: ${data.type}, `)).join('')} completionHandler: @escaping (Result<${returnType.length <= 1 ? returnType[0].type : `(${returnType.map((data, i) => (`${data.type}${returnType.length - 1 == i ? '' : ', '}`)).join('')})`}, Error>) -> Void) {
    Task {
        do {
            let ${name} = try await ${name}(contractAddress: contractAddress ${input.map((data, i) => (`, ${data.name}: ${data.name}`)).join('')})
            completionHandler(.success(${name}))
        } catch {
            completionHandler(.failure(error))
        }
    }
}`
}

const defaultResponse = (name, ret) => {
  return `public struct ${name}Response: ABIResponse, MulticallDecodableResponse {
    public static var types: [ABIType.Type] = [${ret.map((data, i) => (`${handleTypeResponse(data.type)}.self${ret.length - 1 == i ? '' : ', '}`)).join('')}]
    ${ret.map((data, i) => (`public let value${i == 0 ? "" : i}: ${data.type}\n    `)).join('')}
    public init?(values: [ABIDecoder.DecodedValue]) throws {

      ${ret.map((data, i) => (`self.value${i == 0 ? "" : i} = try values[${i}].${handleTypeResponse(data.type).includes(">") ? "decodedArray" :"decoded"}()\n      `)).join('')}
    }
}`
}

const handleInputFunctionResponse = (name, input) => {
  return `public struct ${name}: ABIFunction {
    public static let name = "${name}"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    ${input.map(data => (
    `public let ${data.name}: ${data.type}\n    `
    )).join('')}

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil${input.length ? "," : ""}
        ${input.map((data, i) => (
          `${data.name}: ${data.type}${input.length - 1 == i ? '' : ','}\n        `
          )).join('')}
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        ${input.map((data, i) => (
          `self.${data.name} = ${data.name}\n        `
          )).join('')}
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      ${input.map((data, i) => (
        `try encoder.encode(${data.name})\n      `
        )).join('')}
    }
}`
}
const handleType = (type) => {
  switch (type) {
    case "address":
      return "EthereumAddress"
    case "string":
      return "String"
    case "address[]":
      return "[EthereumAddress]"
    case "uint":
        return "BigUInt"
    case "uint8":
        return "BigUInt"
    case "uint256":
        return "BigUInt"
    case "uint256[]":
        return "[BigUInt]"
    case "int8":
        return "BigUInt"
    case "int256":
      return "BigUInt"
    case "bool":
      return "Bool"
     case "bytes32":
      return "BigUInt"
    default:
      throw `type data of ${type} is undefinied. please check again your abi`
  }
}

const handleTypeResponse = (type) => {
  switch (type) {
    case "EthereumAddress":
      return "EthereumAddress"
    case "String":
      return "String"
    case "[EthereumAddress]":
      return "ABIArray<EthereumAddress>"
    case "[BigUInt]":
        return "ABIArray<BigUInt>"
    case "BigUInt":
        return "BigUInt"
    case "Bool":
      return "Bool"
     case "bytes32":
      return "BigUInt"
    default:
      throw `type data of ${type} is undefinied. please check again your abi`
  }
}

function contractCall(name, funcName, func, input, state) {
  if(state) {
    return `public func ${funcName}(${input.map((data, i) => (`${data.name}: ${data.type}${input.length - 1 == i ? '' : ', '}`)).join('')}) async throws -> ${func.length <= 1 ? func[0].type : `(${func.map((data, i) => (`${data.type}${func.length - 1 == i ? '' : ', '}`)).join('')})`}{
      return try await (${name}Call?.${funcName}(contractAddress: contract${input.map((data, i) => (`, ${data.name}: ${data.name}`)).join('')}))!
   }\n   `
  }else { 
    return `
    public func ${funcName}(${input.map((data, i) => (`${data.name}: ${data.type},`)).join('')} account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (${name}Call?.${funcName}(contractAddress:contract${input.map((data, i) => (`,${data.name}: ${data.name}`)).join('')}, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }\n   `
  }

}
function main(name, func, publicFunc, exFunc, f) {
  return `
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public protocol ${name}Protocol {
  init(client: EthereumClientProtocol)

  ${func.join("\n  ")}
}

open class ${name}: ${name}Protocol {
  let client: EthereumClientProtocol

  required public init(client: EthereumClientProtocol) {
      self.client = client
  }

  ${publicFunc.join("\n  ")}

}
open class ${name}Contract {
  var ${name}Call: ${name}?
  var client: EthereumClientProtocol
  var contract: web3.EthereumAddress
  
  init(contract: String, client: EthereumClientProtocol) {
      self.contract = EthereumAddress(contract)
      self.client = client
      self.${name}Call = ${name}(client: client)
      }
  ${f.join("\n  ")}
      
}
extension ${name} {
  ${exFunc.join("\n  ")}
}
`
}

function response(name, func) {
  return `
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public enum ${name}Responses {
  ${func.join("\n  ")}

}
`
}

function ABIFunction(name, func) {
  return `
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public enum ${name}Functions {
  ${func.join("\n   ")}

}
`
}

function handleInput(list) {
  var res = []
  for(let i = 0; i< list.length;i++) {
    res.push({name:list[i].name, type:handleType(list[i].type)})
  }
  return res
}
function handleOutput(list) {
  var res = []
  for(let i = 0; i< list.length;i++) {
    res.push({name:list[i].name, type:handleType(list[i].type)})
  }
  return res
}
function start() {
  var name = process.argv.slice(2);
  try {
    fs.readFileSync(`${name[0]}.json`);
  }catch {
    throw `${name[0]}.json is not found`
  }
  var raw = fs.readFileSync(`${name[0]}.json`);
  var abi = JSON.parse(raw);

  const totalFunction = []
  const totalPublicFunction = []
  const totalExtensionFunction = []
  const totaldefaultFunction = []
  const totalFunctionX = []
  const call = []
  abi.forEach(data => {
    // if(data.name == "WETH") {
      if(data.type == 'function') {
        if(!data.outputs[0]) return
        if(!data.stateMutability == "nonpayable") return
        const returnType = handleOutput(data.outputs)
        call.push(contractCall(name, data.name, returnType, handleInput(data.inputs), data.stateMutability == "view"))
        totalFunction.push(defaultProtocolFunction(data.name, returnType, handleInput(data.inputs), data.stateMutability == "view"))
        if(data.stateMutability == "view") {
          totalPublicFunction.push(defaultPublicFunction(name, data.name, returnType, handleInput(data.inputs)))
        }else {
          totalPublicFunction.push(defaultPublicPayableFunction(name, data.name, handleInput(data.inputs)))
        }
        if(data.stateMutability == "view") totalExtensionFunction.push(defaultExtensionFunction(data.name, returnType, handleInput(data.inputs)))
        if(data.stateMutability == "view") totaldefaultFunction.push(defaultResponse(data.name, returnType))
        totalFunctionX.push(handleInputFunctionResponse(data.name, handleInput(data.inputs)))
      // }
     
    }
  });
  const mains = main(name, totalFunction, totalPublicFunction, totalExtensionFunction, call)
  const res = response(name, totaldefaultFunction)
  const abiFunc = ABIFunction(name, totalFunctionX)
  if (!fs.existsSync(`./${name}`)){
    fs.mkdirSync(`./${name}`);
  }
  fs.writeFile(`./${name}/${name}.swift`, mains, function (err) {
    if (err) throw err;
    fs.writeFile(`./${name}/${name}Functions.swift`, abiFunc, function (err) {
      if (err) throw err;
      fs.writeFile(`./${name}/${name}Responses.swift`, res, function (err) {
        if (err) throw err;
        console.log('Generate success!');
      }); 
    }); 
  }); 
}
start()