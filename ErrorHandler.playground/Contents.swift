//: Playground - noun: Error Handler

import UIKit


//: In swift errors are represented by values of types that conform to ErrorType protocol.
//: This empty protocol indicates that a type can be used for error handling
//: protocol ErroType{}

enum DefineErrorWithoutErrorType{
    case error
}

enum DefineErrorWithErrorType: ErrorType{
    case error
}

//throw DefineErrorWithoutErrorType.error
//throw DefineErrorWithErrorType.error

enum VendingMachineError: ErrorType{
    case InValidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case outOfStock
}




struct Item {
    let price: Int
    var count: Int
}

class VendingMachine {
    
    
    
    var inVentory = [
        "Chips": Item(price: 2, count: 18),
        "Coaca-Cola": Item(price: 3, count: 0)
    ]
    
    var coinDeposited = 0
    
    private func vend(itemNamed name: String) throws {
        
        guard var item = inVentory[name] else {
            throw VendingMachineError.InValidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinDeposited)
        }

        coinDeposited -= item.price
        
        item.count = item.count - 1
        
        inVentory[name] = item
        
    }
    
    func buy(itemToBuy name: String) throws {
        try vend(itemNamed: name)
    }
    
}


let vendingMachine = VendingMachine()
vendingMachine.coinDeposited = 15

do {
    try vendingMachine.buy(itemToBuy: "Chip")
}catch let error {
    print(error)
}











