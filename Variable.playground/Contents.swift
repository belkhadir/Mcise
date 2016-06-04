

//: # Type



import UIKit

//: ### Example : Bool, Int, Float, Double


var int: Int = 10

var on: Bool = true
var off: Bool = false

var float: Float = 1.5
var double: Double = 1.5
//: Different between float and double( Wiki)
//: Precision is the main difference where float is a single precision
//: (32 bit) floating point data type, double is a double precision (64
//: bit) floating point data type and decimal is a 128-bit floating point
//: data type. The main difference between each of these is the


//: ### type inference

var isTrue = true
var isInt = 10
var isDouble = 10.0
isDouble.dynamicType



//: # Operators

//: ### Example  - Comparison operators

let ticketPrice = 4.7
let tax = 2.0
let payTax = false
let allowance = 20.0

let toPay = ticketPrice + (payTax ? ((4.7 * tax) / 100) : 0)

if allowance >= toPay {
    print("Let's go ")
}else {
    print("😡 😡 😡")
}

//: ### Example - Logical operators

var thereIsPie = true
var hungry = false

if thereIsPie && hungry {
    print("let's eat")
}else {
    print("😛😛😛😛😛")
}

//: ### Example  - Ternary conditional
//: A theoretical example from Apple's Swift Programming Language. These two statements are equivalent:

if thereIsPie {
    //do 1
}else{
    //do 2
}
hungry ? print("let's eat") : print("😛😛😛😛😛")

//: ## Example: String


let nounArray = ["puppy", "laptop", "ocean"]

let index1 = Int(arc4random() % 3)
let index2 = Int(arc4random() % 3)

let sentence = " \(nounArray[index1]) " + "\(nounArray[index2])"
let sentence2 = " \(nounArray[index1]) \(nounArray[index2])"

//: ### Lowercase

let uppercase = "HJHSDFSDFSDFSDF"
let lowercase = uppercase.lowercaseString

//: ### Uppercase

let lowercase1 = "asdasdasdasd"
let upercase1 = lowercase1.uppercaseString



//: ### number of character in string
let string = "I love swift!!"
let numberOfCharacterinString = string.characters.count


//: ### contains the substring
let word = "blablapraprablabla"

if word.rangeOfString("prapra") != nil {
    print("found it")
}



