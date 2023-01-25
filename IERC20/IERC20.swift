
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public protocol IERC20Protocol {
  init(client: EthereumClientProtocol)

  func _decimals(contractAddress: EthereumAddress  ) async throws -> BigUInt
  func _name(contractAddress: EthereumAddress  ) async throws -> String
  func _symbol(contractAddress: EthereumAddress  ) async throws -> String
  func allowance(contractAddress: EthereumAddress , owner: EthereumAddress, spender: EthereumAddress ) async throws -> BigUInt
  func approve(contractAddress: EthereumAddress , spender: EthereumAddress, amount: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func balanceOf(contractAddress: EthereumAddress , account: EthereumAddress ) async throws -> BigUInt
  func burn(contractAddress: EthereumAddress , amount: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func decimals(contractAddress: EthereumAddress  ) async throws -> BigUInt
  func decreaseAllowance(contractAddress: EthereumAddress , spender: EthereumAddress, subtractedValue: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func getOwner(contractAddress: EthereumAddress  ) async throws -> EthereumAddress
  func increaseAllowance(contractAddress: EthereumAddress , spender: EthereumAddress, addedValue: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func mint(contractAddress: EthereumAddress , amount: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func name(contractAddress: EthereumAddress  ) async throws -> String
  func owner(contractAddress: EthereumAddress  ) async throws -> EthereumAddress
  func symbol(contractAddress: EthereumAddress  ) async throws -> String
  func totalSupply(contractAddress: EthereumAddress  ) async throws -> BigUInt
  func transfer(contractAddress: EthereumAddress , recipient: EthereumAddress, amount: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func transferFrom(contractAddress: EthereumAddress , sender: EthereumAddress, recipient: EthereumAddress, amount: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
}

open class IERC20: IERC20Protocol {
  let client: EthereumClientProtocol

  required public init(client: EthereumClientProtocol) {
      self.client = client
  }

  public func _decimals(contractAddress: EthereumAddress ) async throws -> BigUInt {
    let function = IERC20Functions._decimals(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses._decimalsResponse.self)
    return data.value
}
  public func _name(contractAddress: EthereumAddress ) async throws -> String {
    let function = IERC20Functions._name(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses._nameResponse.self)
    return data.value
}
  public func _symbol(contractAddress: EthereumAddress ) async throws -> String {
    let function = IERC20Functions._symbol(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses._symbolResponse.self)
    return data.value
}
  public func allowance(contractAddress: EthereumAddress , owner: EthereumAddress, spender: EthereumAddress) async throws -> BigUInt {
    let function = IERC20Functions.allowance(contract: contractAddress , owner: owner, spender: spender)
    let data = try await function.call(withClient: client, responseType: IERC20Responses.allowanceResponse.self)
    return data.value
}
  public func approve(contractAddress: EthereumAddress , spender: EthereumAddress, amount: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.approve(contract: contractAddress, from: from, gasPrice: gasPrice, spender: spender, amount: amount)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.approve(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, spender: spender, amount: amount)
    let data = try function.transaction()
    return data
}
  public func balanceOf(contractAddress: EthereumAddress , account: EthereumAddress) async throws -> BigUInt {
    let function = IERC20Functions.balanceOf(contract: contractAddress , account: account)
    let data = try await function.call(withClient: client, responseType: IERC20Responses.balanceOfResponse.self)
    return data.value
}
  public func burn(contractAddress: EthereumAddress , amount: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.burn(contract: contractAddress, from: from, gasPrice: gasPrice, amount: amount)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.burn(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amount: amount)
    let data = try function.transaction()
    return data
}
  public func decimals(contractAddress: EthereumAddress ) async throws -> BigUInt {
    let function = IERC20Functions.decimals(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.decimalsResponse.self)
    return data.value
}
  public func decreaseAllowance(contractAddress: EthereumAddress , spender: EthereumAddress, subtractedValue: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.decreaseAllowance(contract: contractAddress, from: from, gasPrice: gasPrice, spender: spender, subtractedValue: subtractedValue)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.decreaseAllowance(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, spender: spender, subtractedValue: subtractedValue)
    let data = try function.transaction()
    return data
}
  public func getOwner(contractAddress: EthereumAddress ) async throws -> EthereumAddress {
    let function = IERC20Functions.getOwner(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.getOwnerResponse.self)
    return data.value
}
  public func increaseAllowance(contractAddress: EthereumAddress , spender: EthereumAddress, addedValue: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.increaseAllowance(contract: contractAddress, from: from, gasPrice: gasPrice, spender: spender, addedValue: addedValue)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.increaseAllowance(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, spender: spender, addedValue: addedValue)
    let data = try function.transaction()
    return data
}
  public func mint(contractAddress: EthereumAddress , amount: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.mint(contract: contractAddress, from: from, gasPrice: gasPrice, amount: amount)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.mint(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amount: amount)
    let data = try function.transaction()
    return data
}
  public func name(contractAddress: EthereumAddress ) async throws -> String {
    let function = IERC20Functions.name(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.nameResponse.self)
    return data.value
}
  public func owner(contractAddress: EthereumAddress ) async throws -> EthereumAddress {
    let function = IERC20Functions.owner(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.ownerResponse.self)
    return data.value
}
  public func symbol(contractAddress: EthereumAddress ) async throws -> String {
    let function = IERC20Functions.symbol(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.symbolResponse.self)
    return data.value
}
  public func totalSupply(contractAddress: EthereumAddress ) async throws -> BigUInt {
    let function = IERC20Functions.totalSupply(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: IERC20Responses.totalSupplyResponse.self)
    return data.value
}
  public func transfer(contractAddress: EthereumAddress , recipient: EthereumAddress, amount: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.transfer(contract: contractAddress, from: from, gasPrice: gasPrice, recipient: recipient, amount: amount)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.transfer(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, recipient: recipient, amount: amount)
    let data = try function.transaction()
    return data
}
  public func transferFrom(contractAddress: EthereumAddress , sender: EthereumAddress, recipient: EthereumAddress, amount: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = IERC20Functions.transferFrom(contract: contractAddress, from: from, gasPrice: gasPrice, sender: sender, recipient: recipient, amount: amount)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = IERC20Functions.transferFrom(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, sender: sender, recipient: recipient, amount: amount)
    let data = try function.transaction()
    return data
}

}
open class IERC20Contract {
  var IERC20Call: IERC20?
  var client: EthereumClientProtocol
  var contract: web3.EthereumAddress
  
  init(contract: String, client: EthereumClientProtocol) {
      self.contract = EthereumAddress(contract)
      self.client = client
      self.IERC20Call = IERC20(client: client)
      }
  public func _decimals() async throws -> BigUInt{
      return try await (IERC20Call?._decimals(contractAddress: contract))!
   }
   
  public func _name() async throws -> String{
      return try await (IERC20Call?._name(contractAddress: contract))!
   }
   
  public func _symbol() async throws -> String{
      return try await (IERC20Call?._symbol(contractAddress: contract))!
   }
   
  public func allowance(owner: EthereumAddress, spender: EthereumAddress) async throws -> BigUInt{
      return try await (IERC20Call?.allowance(contractAddress: contract, owner: owner, spender: spender))!
   }
   
  
    public func approve(spender: EthereumAddress,amount: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.approve(contractAddress:contract,spender: spender,amount: amount, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func balanceOf(account: EthereumAddress) async throws -> BigUInt{
      return try await (IERC20Call?.balanceOf(contractAddress: contract, account: account))!
   }
   
  
    public func burn(amount: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.burn(contractAddress:contract,amount: amount, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func decimals() async throws -> BigUInt{
      return try await (IERC20Call?.decimals(contractAddress: contract))!
   }
   
  
    public func decreaseAllowance(spender: EthereumAddress,subtractedValue: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.decreaseAllowance(contractAddress:contract,spender: spender,subtractedValue: subtractedValue, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func getOwner() async throws -> EthereumAddress{
      return try await (IERC20Call?.getOwner(contractAddress: contract))!
   }
   
  
    public func increaseAllowance(spender: EthereumAddress,addedValue: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.increaseAllowance(contractAddress:contract,spender: spender,addedValue: addedValue, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func mint(amount: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.mint(contractAddress:contract,amount: amount, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func name() async throws -> String{
      return try await (IERC20Call?.name(contractAddress: contract))!
   }
   
  public func owner() async throws -> EthereumAddress{
      return try await (IERC20Call?.owner(contractAddress: contract))!
   }
   
  public func symbol() async throws -> String{
      return try await (IERC20Call?.symbol(contractAddress: contract))!
   }
   
  public func totalSupply() async throws -> BigUInt{
      return try await (IERC20Call?.totalSupply(contractAddress: contract))!
   }
   
  
    public func transfer(recipient: EthereumAddress,amount: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.transfer(contractAddress:contract,recipient: recipient,amount: amount, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func transferFrom(sender: EthereumAddress,recipient: EthereumAddress,amount: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (IERC20Call?.transferFrom(contractAddress:contract,sender: sender,recipient: recipient,amount: amount, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
      
}
extension IERC20 {
  public func _decimals(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<BigUInt, Error>) -> Void) {
    Task {
        do {
            let _decimals = try await _decimals(contractAddress: contractAddress )
            completionHandler(.success(_decimals))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func _name(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<String, Error>) -> Void) {
    Task {
        do {
            let _name = try await _name(contractAddress: contractAddress )
            completionHandler(.success(_name))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func _symbol(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<String, Error>) -> Void) {
    Task {
        do {
            let _symbol = try await _symbol(contractAddress: contractAddress )
            completionHandler(.success(_symbol))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func allowance(contractAddress: EthereumAddress, owner: EthereumAddress, spender: EthereumAddress,  completionHandler: @escaping (Result<BigUInt, Error>) -> Void) {
    Task {
        do {
            let allowance = try await allowance(contractAddress: contractAddress , owner: owner, spender: spender)
            completionHandler(.success(allowance))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func balanceOf(contractAddress: EthereumAddress, account: EthereumAddress,  completionHandler: @escaping (Result<BigUInt, Error>) -> Void) {
    Task {
        do {
            let balanceOf = try await balanceOf(contractAddress: contractAddress , account: account)
            completionHandler(.success(balanceOf))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func decimals(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<BigUInt, Error>) -> Void) {
    Task {
        do {
            let decimals = try await decimals(contractAddress: contractAddress )
            completionHandler(.success(decimals))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func getOwner(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<EthereumAddress, Error>) -> Void) {
    Task {
        do {
            let getOwner = try await getOwner(contractAddress: contractAddress )
            completionHandler(.success(getOwner))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func name(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<String, Error>) -> Void) {
    Task {
        do {
            let name = try await name(contractAddress: contractAddress )
            completionHandler(.success(name))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func owner(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<EthereumAddress, Error>) -> Void) {
    Task {
        do {
            let owner = try await owner(contractAddress: contractAddress )
            completionHandler(.success(owner))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func symbol(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<String, Error>) -> Void) {
    Task {
        do {
            let symbol = try await symbol(contractAddress: contractAddress )
            completionHandler(.success(symbol))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func totalSupply(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<BigUInt, Error>) -> Void) {
    Task {
        do {
            let totalSupply = try await totalSupply(contractAddress: contractAddress )
            completionHandler(.success(totalSupply))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
}
