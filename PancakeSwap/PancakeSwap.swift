
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public protocol PancakeSwapProtocol {
  init(client: EthereumClientProtocol)

  func WETH(contractAddress: EthereumAddress  ) async throws -> EthereumAddress
  func addLiquidity(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, amountADesired: BigUInt, amountBDesired: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func addLiquidityETH(contractAddress: EthereumAddress , token: EthereumAddress, amountTokenDesired: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func factory(contractAddress: EthereumAddress  ) async throws -> EthereumAddress
  func getAmountIn(contractAddress: EthereumAddress , amountOut: BigUInt, reserveIn: BigUInt, reserveOut: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func getAmountOut(contractAddress: EthereumAddress , amountIn: BigUInt, reserveIn: BigUInt, reserveOut: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func getAmountsIn(contractAddress: EthereumAddress , amountOut: BigUInt, path: [EthereumAddress] ) async throws -> [BigUInt]
  func getAmountsOut(contractAddress: EthereumAddress , amountIn: BigUInt, path: [EthereumAddress] ) async throws -> [BigUInt]
  func quote(contractAddress: EthereumAddress , amountA: BigUInt, reserveA: BigUInt, reserveB: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidity(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, liquidity: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidityETH(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidityETHSupportingFeeOnTransferTokens(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidityETHWithPermit(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func removeLiquidityWithPermit(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, liquidity: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapETHForExactTokens(contractAddress: EthereumAddress , amountOut: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapExactETHForTokens(contractAddress: EthereumAddress , amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapExactTokensForETH(contractAddress: EthereumAddress , amountIn: BigUInt, amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapExactTokensForTokens(contractAddress: EthereumAddress , amountIn: BigUInt, amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapTokensForExactETH(contractAddress: EthereumAddress , amountOut: BigUInt, amountInMax: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
  func swapTokensForExactTokens(contractAddress: EthereumAddress , amountOut: BigUInt, amountInMax: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt ,from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction
}

open class PancakeSwap: PancakeSwapProtocol {
  let client: EthereumClientProtocol

  required public init(client: EthereumClientProtocol) {
      self.client = client
  }

  public func WETH(contractAddress: EthereumAddress ) async throws -> EthereumAddress {
    let function = PancakeSwapFunctions.WETH(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: PancakeSwapResponses.WETHResponse.self)
    return data.value
}
  public func addLiquidity(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, amountADesired: BigUInt, amountBDesired: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.addLiquidity(contract: contractAddress, from: from, gasPrice: gasPrice, tokenA: tokenA, tokenB: tokenB, amountADesired: amountADesired, amountBDesired: amountBDesired, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.addLiquidity(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, tokenA: tokenA, tokenB: tokenB, amountADesired: amountADesired, amountBDesired: amountBDesired, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func addLiquidityETH(contractAddress: EthereumAddress , token: EthereumAddress, amountTokenDesired: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.addLiquidityETH(contract: contractAddress, from: from, gasPrice: gasPrice, token: token, amountTokenDesired: amountTokenDesired, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.addLiquidityETH(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, token: token, amountTokenDesired: amountTokenDesired, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func factory(contractAddress: EthereumAddress ) async throws -> EthereumAddress {
    let function = PancakeSwapFunctions.factory(contract: contractAddress )
    let data = try await function.call(withClient: client, responseType: PancakeSwapResponses.factoryResponse.self)
    return data.value
}
  public func getAmountIn(contractAddress: EthereumAddress , amountOut: BigUInt, reserveIn: BigUInt, reserveOut: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.getAmountIn(contract: contractAddress, from: from, gasPrice: gasPrice, amountOut: amountOut, reserveIn: reserveIn, reserveOut: reserveOut)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.getAmountIn(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountOut: amountOut, reserveIn: reserveIn, reserveOut: reserveOut)
    let data = try function.transaction()
    return data
}
  public func getAmountOut(contractAddress: EthereumAddress , amountIn: BigUInt, reserveIn: BigUInt, reserveOut: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.getAmountOut(contract: contractAddress, from: from, gasPrice: gasPrice, amountIn: amountIn, reserveIn: reserveIn, reserveOut: reserveOut)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.getAmountOut(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountIn: amountIn, reserveIn: reserveIn, reserveOut: reserveOut)
    let data = try function.transaction()
    return data
}
  public func getAmountsIn(contractAddress: EthereumAddress , amountOut: BigUInt, path: [EthereumAddress]) async throws -> [BigUInt] {
    let function = PancakeSwapFunctions.getAmountsIn(contract: contractAddress , amountOut: amountOut, path: path)
    let data = try await function.call(withClient: client, responseType: PancakeSwapResponses.getAmountsInResponse.self)
    return data.value
}
  public func getAmountsOut(contractAddress: EthereumAddress , amountIn: BigUInt, path: [EthereumAddress]) async throws -> [BigUInt] {
    let function = PancakeSwapFunctions.getAmountsOut(contract: contractAddress , amountIn: amountIn, path: path)
    let data = try await function.call(withClient: client, responseType: PancakeSwapResponses.getAmountsOutResponse.self)
    return data.value
}
  public func quote(contractAddress: EthereumAddress , amountA: BigUInt, reserveA: BigUInt, reserveB: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.quote(contract: contractAddress, from: from, gasPrice: gasPrice, amountA: amountA, reserveA: reserveA, reserveB: reserveB)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.quote(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountA: amountA, reserveA: reserveA, reserveB: reserveB)
    let data = try function.transaction()
    return data
}
  public func removeLiquidity(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, liquidity: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidity(contract: contractAddress, from: from, gasPrice: gasPrice, tokenA: tokenA, tokenB: tokenB, liquidity: liquidity, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidity(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, tokenA: tokenA, tokenB: tokenB, liquidity: liquidity, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func removeLiquidityETH(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidityETH(contract: contractAddress, from: from, gasPrice: gasPrice, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidityETH(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func removeLiquidityETHSupportingFeeOnTransferTokens(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidityETHSupportingFeeOnTransferTokens(contract: contractAddress, from: from, gasPrice: gasPrice, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidityETHSupportingFeeOnTransferTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func removeLiquidityETHWithPermit(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidityETHWithPermit(contract: contractAddress, from: from, gasPrice: gasPrice, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidityETHWithPermit(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let data = try function.transaction()
    return data
}
  public func removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(contractAddress: EthereumAddress , token: EthereumAddress, liquidity: BigUInt, amountTokenMin: BigUInt, amountETHMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(contract: contractAddress, from: from, gasPrice: gasPrice, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, token: token, liquidity: liquidity, amountTokenMin: amountTokenMin, amountETHMin: amountETHMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let data = try function.transaction()
    return data
}
  public func removeLiquidityWithPermit(contractAddress: EthereumAddress , tokenA: EthereumAddress, tokenB: EthereumAddress, liquidity: BigUInt, amountAMin: BigUInt, amountBMin: BigUInt, to: EthereumAddress, deadline: BigUInt, approveMax: Bool, v: BigUInt, r: BigUInt, s: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.removeLiquidityWithPermit(contract: contractAddress, from: from, gasPrice: gasPrice, tokenA: tokenA, tokenB: tokenB, liquidity: liquidity, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.removeLiquidityWithPermit(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, tokenA: tokenA, tokenB: tokenB, liquidity: liquidity, amountAMin: amountAMin, amountBMin: amountBMin, to: to, deadline: deadline, approveMax: approveMax, v: v, r: r, s: s)
    let data = try function.transaction()
    return data
}
  public func swapETHForExactTokens(contractAddress: EthereumAddress , amountOut: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapETHForExactTokens(contract: contractAddress, from: from, gasPrice: gasPrice, amountOut: amountOut, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapETHForExactTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountOut: amountOut, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func swapExactETHForTokens(contractAddress: EthereumAddress , amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapExactETHForTokens(contract: contractAddress, from: from, gasPrice: gasPrice, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapExactETHForTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func swapExactTokensForETH(contractAddress: EthereumAddress , amountIn: BigUInt, amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapExactTokensForETH(contract: contractAddress, from: from, gasPrice: gasPrice, amountIn: amountIn, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapExactTokensForETH(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountIn: amountIn, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func swapExactTokensForTokens(contractAddress: EthereumAddress , amountIn: BigUInt, amountOutMin: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapExactTokensForTokens(contract: contractAddress, from: from, gasPrice: gasPrice, amountIn: amountIn, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapExactTokensForTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountIn: amountIn, amountOutMin: amountOutMin, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func swapTokensForExactETH(contractAddress: EthereumAddress , amountOut: BigUInt, amountInMax: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapTokensForExactETH(contract: contractAddress, from: from, gasPrice: gasPrice, amountOut: amountOut, amountInMax: amountInMax, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapTokensForExactETH(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountOut: amountOut, amountInMax: amountInMax, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}
  public func swapTokensForExactTokens(contractAddress: EthereumAddress , amountOut: BigUInt, amountInMax: BigUInt, path: [EthereumAddress], to: EthereumAddress, deadline: BigUInt, from: EthereumAddress, gasPrice: BigUInt) async throws -> EthereumTransaction {
    let tryCall = PancakeSwapFunctions.swapTokensForExactTokens(contract: contractAddress, from: from, gasPrice: gasPrice, amountOut: amountOut, amountInMax: amountInMax, path: path, to: to, deadline: deadline)
    let subdata = try tryCall.transaction()
    let gas = try await client.eth_estimateGas(subdata)
    let function = PancakeSwapFunctions.swapTokensForExactTokens(contract: contractAddress, from: from, gasPrice: gasPrice,gasLimit: gas, amountOut: amountOut, amountInMax: amountInMax, path: path, to: to, deadline: deadline)
    let data = try function.transaction()
    return data
}

}
open class PancakeSwapContract {
  var PancakeSwapCall: PancakeSwap?
  var client: EthereumClientProtocol
  var contract: web3.EthereumAddress
  
  init(contract: String, client: EthereumClientProtocol) {
      self.contract = EthereumAddress(contract)
      self.client = client
      self.PancakeSwapCall = PancakeSwap(client: client)
      }
  public func WETH() async throws -> EthereumAddress{
      return try await (PancakeSwapCall?.WETH(contractAddress: contract))!
   }
   
  
    public func addLiquidity(tokenA: EthereumAddress,tokenB: EthereumAddress,amountADesired: BigUInt,amountBDesired: BigUInt,amountAMin: BigUInt,amountBMin: BigUInt,to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.addLiquidity(contractAddress:contract,tokenA: tokenA,tokenB: tokenB,amountADesired: amountADesired,amountBDesired: amountBDesired,amountAMin: amountAMin,amountBMin: amountBMin,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func addLiquidityETH(token: EthereumAddress,amountTokenDesired: BigUInt,amountTokenMin: BigUInt,amountETHMin: BigUInt,to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.addLiquidityETH(contractAddress:contract,token: token,amountTokenDesired: amountTokenDesired,amountTokenMin: amountTokenMin,amountETHMin: amountETHMin,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func factory() async throws -> EthereumAddress{
      return try await (PancakeSwapCall?.factory(contractAddress: contract))!
   }
   
  
    public func getAmountIn(amountOut: BigUInt,reserveIn: BigUInt,reserveOut: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.getAmountIn(contractAddress:contract,amountOut: amountOut,reserveIn: reserveIn,reserveOut: reserveOut, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func getAmountOut(amountIn: BigUInt,reserveIn: BigUInt,reserveOut: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.getAmountOut(contractAddress:contract,amountIn: amountIn,reserveIn: reserveIn,reserveOut: reserveOut, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  public func getAmountsIn(amountOut: BigUInt, path: [EthereumAddress]) async throws -> [BigUInt]{
      return try await (PancakeSwapCall?.getAmountsIn(contractAddress: contract, amountOut: amountOut, path: path))!
   }
   
  public func getAmountsOut(amountIn: BigUInt, path: [EthereumAddress]) async throws -> [BigUInt]{
      return try await (PancakeSwapCall?.getAmountsOut(contractAddress: contract, amountIn: amountIn, path: path))!
   }
   
  
    public func quote(amountA: BigUInt,reserveA: BigUInt,reserveB: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.quote(contractAddress:contract,amountA: amountA,reserveA: reserveA,reserveB: reserveB, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidity(tokenA: EthereumAddress,tokenB: EthereumAddress,liquidity: BigUInt,amountAMin: BigUInt,amountBMin: BigUInt,to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidity(contractAddress:contract,tokenA: tokenA,tokenB: tokenB,liquidity: liquidity,amountAMin: amountAMin,amountBMin: amountBMin,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidityETH(token: EthereumAddress,liquidity: BigUInt,amountTokenMin: BigUInt,amountETHMin: BigUInt,to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidityETH(contractAddress:contract,token: token,liquidity: liquidity,amountTokenMin: amountTokenMin,amountETHMin: amountETHMin,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidityETHSupportingFeeOnTransferTokens(token: EthereumAddress,liquidity: BigUInt,amountTokenMin: BigUInt,amountETHMin: BigUInt,to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidityETHSupportingFeeOnTransferTokens(contractAddress:contract,token: token,liquidity: liquidity,amountTokenMin: amountTokenMin,amountETHMin: amountETHMin,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidityETHWithPermit(token: EthereumAddress,liquidity: BigUInt,amountTokenMin: BigUInt,amountETHMin: BigUInt,to: EthereumAddress,deadline: BigUInt,approveMax: Bool,v: BigUInt,r: BigUInt,s: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidityETHWithPermit(contractAddress:contract,token: token,liquidity: liquidity,amountTokenMin: amountTokenMin,amountETHMin: amountETHMin,to: to,deadline: deadline,approveMax: approveMax,v: v,r: r,s: s, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(token: EthereumAddress,liquidity: BigUInt,amountTokenMin: BigUInt,amountETHMin: BigUInt,to: EthereumAddress,deadline: BigUInt,approveMax: Bool,v: BigUInt,r: BigUInt,s: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(contractAddress:contract,token: token,liquidity: liquidity,amountTokenMin: amountTokenMin,amountETHMin: amountETHMin,to: to,deadline: deadline,approveMax: approveMax,v: v,r: r,s: s, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func removeLiquidityWithPermit(tokenA: EthereumAddress,tokenB: EthereumAddress,liquidity: BigUInt,amountAMin: BigUInt,amountBMin: BigUInt,to: EthereumAddress,deadline: BigUInt,approveMax: Bool,v: BigUInt,r: BigUInt,s: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.removeLiquidityWithPermit(contractAddress:contract,tokenA: tokenA,tokenB: tokenB,liquidity: liquidity,amountAMin: amountAMin,amountBMin: amountBMin,to: to,deadline: deadline,approveMax: approveMax,v: v,r: r,s: s, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapETHForExactTokens(amountOut: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapETHForExactTokens(contractAddress:contract,amountOut: amountOut,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapExactETHForTokens(amountOutMin: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapExactETHForTokens(contractAddress:contract,amountOutMin: amountOutMin,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapExactTokensForETH(amountIn: BigUInt,amountOutMin: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapExactTokensForETH(contractAddress:contract,amountIn: amountIn,amountOutMin: amountOutMin,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapExactTokensForTokens(amountIn: BigUInt,amountOutMin: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapExactTokensForTokens(contractAddress:contract,amountIn: amountIn,amountOutMin: amountOutMin,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapTokensForExactETH(amountOut: BigUInt,amountInMax: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapTokensForExactETH(contractAddress:contract,amountOut: amountOut,amountInMax: amountInMax,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
  
    public func swapTokensForExactTokens(amountOut: BigUInt,amountInMax: BigUInt,path: [EthereumAddress],to: EthereumAddress,deadline: BigUInt, account: EthereumAccount) async throws -> String{
      let gasPrice = try await client.eth_gasPrice()
      let transaction = try await (PancakeSwapCall?.swapTokensForExactTokens(contractAddress:contract,amountOut: amountOut,amountInMax: amountInMax,path: path,to: to,deadline: deadline, from: account.address, gasPrice: gasPrice))!
      let txHash = try await client.eth_sendRawTransaction(transaction, withAccount: account)
      return txHash
   }
   
      
}
extension PancakeSwap {
  public func WETH(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<EthereumAddress, Error>) -> Void) {
    Task {
        do {
            let WETH = try await WETH(contractAddress: contractAddress )
            completionHandler(.success(WETH))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func factory(contractAddress: EthereumAddress,  completionHandler: @escaping (Result<EthereumAddress, Error>) -> Void) {
    Task {
        do {
            let factory = try await factory(contractAddress: contractAddress )
            completionHandler(.success(factory))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func getAmountsIn(contractAddress: EthereumAddress, amountOut: BigUInt, path: [EthereumAddress],  completionHandler: @escaping (Result<[BigUInt], Error>) -> Void) {
    Task {
        do {
            let getAmountsIn = try await getAmountsIn(contractAddress: contractAddress , amountOut: amountOut, path: path)
            completionHandler(.success(getAmountsIn))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
  public func getAmountsOut(contractAddress: EthereumAddress, amountIn: BigUInt, path: [EthereumAddress],  completionHandler: @escaping (Result<[BigUInt], Error>) -> Void) {
    Task {
        do {
            let getAmountsOut = try await getAmountsOut(contractAddress: contractAddress , amountIn: amountIn, path: path)
            completionHandler(.success(getAmountsOut))
        } catch {
            completionHandler(.failure(error))
        }
    }
}
}
