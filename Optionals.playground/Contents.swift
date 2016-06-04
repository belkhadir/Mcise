//: Playground - noun: a place where people can play

import UIKit



var x:Int = 20
//x = nil

var anyObject: AnyObject
// anyObject = nil



var y: Int

let possibleNumber: String
let impossibleNumber: String

possibleNumber = "123"
impossibleNumber = "ABC"

//y = Int(possibleNumber)
//y = Int(impossibleNumber)


//: ### initial variable to nil using optional value
var optionalType: Int? = nil
//print(optionalType)

optionalType = 10
//print(optionalType)

var possibleNumber1: String? = "123"
//print(possibleNumber1)

//possibleNumber1 == possibleNumber




var imIntType: Int? = Int(possibleNumber)
var imNotIntType: Int? = Int(impossibleNumber)



//: ### How to work with optional value



let possibleString: String? = "An optional string."
//We should unwrappe possibleString because ????
let forcedString: String = possibleString!

//Unwrapped optional as giving permission for the 
//optional to be unwrapped automatically where it is used.
let assumedString: String! = "An implicity unwrapped optionals string."
let implicitString: String = assumedString







let arrayOfString = [possibleNumber, impossibleNumber]
let randomIndex = Int(arc4random() % 2)

if let currentNumber = Int(arrayOfString[randomIndex]) {
    print(currentNumber)
}

let dictionary: [String: Int] = [
    "1" : 1,
    "2" : 2,
    "3" : 3
]

//func valueInMydictionary(keyInString key : String) -> Int {
//    
//    
//    var value: Int = 0
//    
//    //safe
//    if let newValue = dictionary[key] {
//        value = newValue
//        return value
//    }
//    else{
//        return value
//    }
//    //not safe
//    return dictionary[key]!
//    
//}


//: ## We will explore more case  later














