
//
//  swiftAbi
//  Don't change the files! this file is generated!
//  https://github.com/imanrep/
//

import BigInt
import Foundation
import web3

public enum PancakeSwapFunctions {
  public struct WETH: ABIFunction {
    public static let name = "WETH"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      
    }
}
   public struct addLiquidity: ABIFunction {
    public static let name = "addLiquidity"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let tokenA: EthereumAddress
    public let tokenB: EthereumAddress
    public let amountADesired: BigUInt
    public let amountBDesired: BigUInt
    public let amountAMin: BigUInt
    public let amountBMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        tokenA: EthereumAddress,
        tokenB: EthereumAddress,
        amountADesired: BigUInt,
        amountBDesired: BigUInt,
        amountAMin: BigUInt,
        amountBMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.tokenA = tokenA
        self.tokenB = tokenB
        self.amountADesired = amountADesired
        self.amountBDesired = amountBDesired
        self.amountAMin = amountAMin
        self.amountBMin = amountBMin
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(tokenA)
      try encoder.encode(tokenB)
      try encoder.encode(amountADesired)
      try encoder.encode(amountBDesired)
      try encoder.encode(amountAMin)
      try encoder.encode(amountBMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct addLiquidityETH: ABIFunction {
    public static let name = "addLiquidityETH"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let token: EthereumAddress
    public let amountTokenDesired: BigUInt
    public let amountTokenMin: BigUInt
    public let amountETHMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        token: EthereumAddress,
        amountTokenDesired: BigUInt,
        amountTokenMin: BigUInt,
        amountETHMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.token = token
        self.amountTokenDesired = amountTokenDesired
        self.amountTokenMin = amountTokenMin
        self.amountETHMin = amountETHMin
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(token)
      try encoder.encode(amountTokenDesired)
      try encoder.encode(amountTokenMin)
      try encoder.encode(amountETHMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct factory: ABIFunction {
    public static let name = "factory"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      
    }
}
   public struct getAmountIn: ABIFunction {
    public static let name = "getAmountIn"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOut: BigUInt
    public let reserveIn: BigUInt
    public let reserveOut: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOut: BigUInt,
        reserveIn: BigUInt,
        reserveOut: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOut = amountOut
        self.reserveIn = reserveIn
        self.reserveOut = reserveOut
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOut)
      try encoder.encode(reserveIn)
      try encoder.encode(reserveOut)
      
    }
}
   public struct getAmountOut: ABIFunction {
    public static let name = "getAmountOut"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountIn: BigUInt
    public let reserveIn: BigUInt
    public let reserveOut: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountIn: BigUInt,
        reserveIn: BigUInt,
        reserveOut: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountIn = amountIn
        self.reserveIn = reserveIn
        self.reserveOut = reserveOut
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountIn)
      try encoder.encode(reserveIn)
      try encoder.encode(reserveOut)
      
    }
}
   public struct getAmountsIn: ABIFunction {
    public static let name = "getAmountsIn"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOut: BigUInt
    public let path: [EthereumAddress]
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOut: BigUInt,
        path: [EthereumAddress]
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOut = amountOut
        self.path = path
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOut)
      try encoder.encode(path)
      
    }
}
   public struct getAmountsOut: ABIFunction {
    public static let name = "getAmountsOut"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountIn: BigUInt
    public let path: [EthereumAddress]
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountIn: BigUInt,
        path: [EthereumAddress]
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountIn = amountIn
        self.path = path
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountIn)
      try encoder.encode(path)
      
    }
}
   public struct quote: ABIFunction {
    public static let name = "quote"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountA: BigUInt
    public let reserveA: BigUInt
    public let reserveB: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountA: BigUInt,
        reserveA: BigUInt,
        reserveB: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountA = amountA
        self.reserveA = reserveA
        self.reserveB = reserveB
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountA)
      try encoder.encode(reserveA)
      try encoder.encode(reserveB)
      
    }
}
   public struct removeLiquidity: ABIFunction {
    public static let name = "removeLiquidity"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let tokenA: EthereumAddress
    public let tokenB: EthereumAddress
    public let liquidity: BigUInt
    public let amountAMin: BigUInt
    public let amountBMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        tokenA: EthereumAddress,
        tokenB: EthereumAddress,
        liquidity: BigUInt,
        amountAMin: BigUInt,
        amountBMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.tokenA = tokenA
        self.tokenB = tokenB
        self.liquidity = liquidity
        self.amountAMin = amountAMin
        self.amountBMin = amountBMin
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(tokenA)
      try encoder.encode(tokenB)
      try encoder.encode(liquidity)
      try encoder.encode(amountAMin)
      try encoder.encode(amountBMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct removeLiquidityETH: ABIFunction {
    public static let name = "removeLiquidityETH"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let token: EthereumAddress
    public let liquidity: BigUInt
    public let amountTokenMin: BigUInt
    public let amountETHMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        token: EthereumAddress,
        liquidity: BigUInt,
        amountTokenMin: BigUInt,
        amountETHMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.token = token
        self.liquidity = liquidity
        self.amountTokenMin = amountTokenMin
        self.amountETHMin = amountETHMin
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(token)
      try encoder.encode(liquidity)
      try encoder.encode(amountTokenMin)
      try encoder.encode(amountETHMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct removeLiquidityETHSupportingFeeOnTransferTokens: ABIFunction {
    public static let name = "removeLiquidityETHSupportingFeeOnTransferTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let token: EthereumAddress
    public let liquidity: BigUInt
    public let amountTokenMin: BigUInt
    public let amountETHMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        token: EthereumAddress,
        liquidity: BigUInt,
        amountTokenMin: BigUInt,
        amountETHMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.token = token
        self.liquidity = liquidity
        self.amountTokenMin = amountTokenMin
        self.amountETHMin = amountETHMin
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(token)
      try encoder.encode(liquidity)
      try encoder.encode(amountTokenMin)
      try encoder.encode(amountETHMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct removeLiquidityETHWithPermit: ABIFunction {
    public static let name = "removeLiquidityETHWithPermit"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let token: EthereumAddress
    public let liquidity: BigUInt
    public let amountTokenMin: BigUInt
    public let amountETHMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    public let approveMax: Bool
    public let v: BigUInt
    public let r: BigUInt
    public let s: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        token: EthereumAddress,
        liquidity: BigUInt,
        amountTokenMin: BigUInt,
        amountETHMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt,
        approveMax: Bool,
        v: BigUInt,
        r: BigUInt,
        s: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.token = token
        self.liquidity = liquidity
        self.amountTokenMin = amountTokenMin
        self.amountETHMin = amountETHMin
        self.to = to
        self.deadline = deadline
        self.approveMax = approveMax
        self.v = v
        self.r = r
        self.s = s
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(token)
      try encoder.encode(liquidity)
      try encoder.encode(amountTokenMin)
      try encoder.encode(amountETHMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      try encoder.encode(approveMax)
      try encoder.encode(v)
      try encoder.encode(r)
      try encoder.encode(s)
      
    }
}
   public struct removeLiquidityETHWithPermitSupportingFeeOnTransferTokens: ABIFunction {
    public static let name = "removeLiquidityETHWithPermitSupportingFeeOnTransferTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let token: EthereumAddress
    public let liquidity: BigUInt
    public let amountTokenMin: BigUInt
    public let amountETHMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    public let approveMax: Bool
    public let v: BigUInt
    public let r: BigUInt
    public let s: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        token: EthereumAddress,
        liquidity: BigUInt,
        amountTokenMin: BigUInt,
        amountETHMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt,
        approveMax: Bool,
        v: BigUInt,
        r: BigUInt,
        s: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.token = token
        self.liquidity = liquidity
        self.amountTokenMin = amountTokenMin
        self.amountETHMin = amountETHMin
        self.to = to
        self.deadline = deadline
        self.approveMax = approveMax
        self.v = v
        self.r = r
        self.s = s
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(token)
      try encoder.encode(liquidity)
      try encoder.encode(amountTokenMin)
      try encoder.encode(amountETHMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      try encoder.encode(approveMax)
      try encoder.encode(v)
      try encoder.encode(r)
      try encoder.encode(s)
      
    }
}
   public struct removeLiquidityWithPermit: ABIFunction {
    public static let name = "removeLiquidityWithPermit"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let tokenA: EthereumAddress
    public let tokenB: EthereumAddress
    public let liquidity: BigUInt
    public let amountAMin: BigUInt
    public let amountBMin: BigUInt
    public let to: EthereumAddress
    public let deadline: BigUInt
    public let approveMax: Bool
    public let v: BigUInt
    public let r: BigUInt
    public let s: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        tokenA: EthereumAddress,
        tokenB: EthereumAddress,
        liquidity: BigUInt,
        amountAMin: BigUInt,
        amountBMin: BigUInt,
        to: EthereumAddress,
        deadline: BigUInt,
        approveMax: Bool,
        v: BigUInt,
        r: BigUInt,
        s: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.tokenA = tokenA
        self.tokenB = tokenB
        self.liquidity = liquidity
        self.amountAMin = amountAMin
        self.amountBMin = amountBMin
        self.to = to
        self.deadline = deadline
        self.approveMax = approveMax
        self.v = v
        self.r = r
        self.s = s
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(tokenA)
      try encoder.encode(tokenB)
      try encoder.encode(liquidity)
      try encoder.encode(amountAMin)
      try encoder.encode(amountBMin)
      try encoder.encode(to)
      try encoder.encode(deadline)
      try encoder.encode(approveMax)
      try encoder.encode(v)
      try encoder.encode(r)
      try encoder.encode(s)
      
    }
}
   public struct swapETHForExactTokens: ABIFunction {
    public static let name = "swapETHForExactTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOut: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOut: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOut = amountOut
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOut)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct swapExactETHForTokens: ABIFunction {
    public static let name = "swapExactETHForTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOutMin: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOutMin: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOutMin = amountOutMin
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOutMin)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct swapExactTokensForETH: ABIFunction {
    public static let name = "swapExactTokensForETH"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountIn: BigUInt
    public let amountOutMin: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountIn: BigUInt,
        amountOutMin: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountIn = amountIn
        self.amountOutMin = amountOutMin
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountIn)
      try encoder.encode(amountOutMin)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct swapExactTokensForTokens: ABIFunction {
    public static let name = "swapExactTokensForTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountIn: BigUInt
    public let amountOutMin: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountIn: BigUInt,
        amountOutMin: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountIn = amountIn
        self.amountOutMin = amountOutMin
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountIn)
      try encoder.encode(amountOutMin)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct swapTokensForExactETH: ABIFunction {
    public static let name = "swapTokensForExactETH"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOut: BigUInt
    public let amountInMax: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOut: BigUInt,
        amountInMax: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOut = amountOut
        self.amountInMax = amountInMax
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOut)
      try encoder.encode(amountInMax)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}
   public struct swapTokensForExactTokens: ABIFunction {
    public static let name = "swapTokensForExactTokens"
    public let gasPrice: BigUInt?
    public let gasLimit: BigUInt?
    public var contract: EthereumAddress
    public let from: EthereumAddress?

    public let amountOut: BigUInt
    public let amountInMax: BigUInt
    public let path: [EthereumAddress]
    public let to: EthereumAddress
    public let deadline: BigUInt
    

    public init(
        contract: EthereumAddress,
        from: EthereumAddress? = nil,
        gasPrice: BigUInt? = nil,
        gasLimit: BigUInt? = nil,
        amountOut: BigUInt,
        amountInMax: BigUInt,
        path: [EthereumAddress],
        to: EthereumAddress,
        deadline: BigUInt
        
    ) {
        self.contract = contract
        self.from = from
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.amountOut = amountOut
        self.amountInMax = amountInMax
        self.path = path
        self.to = to
        self.deadline = deadline
        
    }

    public func encode(to encoder: ABIFunctionEncoder) throws {
      try encoder.encode(amountOut)
      try encoder.encode(amountInMax)
      try encoder.encode(path)
      try encoder.encode(to)
      try encoder.encode(deadline)
      
    }
}

}
