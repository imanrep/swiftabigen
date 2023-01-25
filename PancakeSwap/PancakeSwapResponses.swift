
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public enum PancakeSwapResponses {
  public struct WETHResponse: ABIResponse, MulticallDecodableResponse {
    public static var types: [ABIType.Type] = [EthereumAddress.self]
    public let value: EthereumAddress
    
    public init?(values: [ABIDecoder.DecodedValue]) throws {

      self.value = try values[0].decoded()
      
    }
}
  public struct factoryResponse: ABIResponse, MulticallDecodableResponse {
    public static var types: [ABIType.Type] = [EthereumAddress.self]
    public let value: EthereumAddress
    
    public init?(values: [ABIDecoder.DecodedValue]) throws {

      self.value = try values[0].decoded()
      
    }
}
  public struct getAmountsInResponse: ABIResponse, MulticallDecodableResponse {
    public static var types: [ABIType.Type] = [ABIArray<BigUInt>.self]
    public let value: [BigUInt]
    
    public init?(values: [ABIDecoder.DecodedValue]) throws {

      self.value = try values[0].decodedArray()
      
    }
}
  public struct getAmountsOutResponse: ABIResponse, MulticallDecodableResponse {
    public static var types: [ABIType.Type] = [ABIArray<BigUInt>.self]
    public let value: [BigUInt]
    
    public init?(values: [ABIDecoder.DecodedValue]) throws {

      self.value = try values[0].decodedArray()
      
    }
}

}
