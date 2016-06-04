//: # Collections

import UIKit


//: ## Array

//The verbose way
let array = Array<Double>()

//Array literal 
let otherWay = [Double]()


let part1 = [1,2,3,4,5]
let part2 = [6,7,8,9,10]

let newArray = part1 + part2
let anotherArray = part1
//: ### Array operations: append, insert, remove, count, retrieve
var shoppingList: [String] = ["Eggs", "Milk"]
//:  append
//adding new element in the end of array
shoppingList.append("Chocolate")
//another way using operator(+=)
shoppingList += ["Cheese"]


//: remove 
//delete the first element
shoppingList.removeAtIndex(0)
//delete the last element
shoppingList.removeLast()

//: insert

shoppingList.insert("Eggs", atIndex: 0)
shoppingList.insert("Cheese", atIndex: shoppingList.count - 1)

//: count

shoppingList.count

//: retrieve

shoppingList[0]

for element in shoppingList {
    print(element)
}

for (index, element) in shoppingList.enumerate() {
    print("index: \(index) , the element: \(element)")
}

//: ## Dictionary

//: ### Dictionary initialization
// Initializer syntax
var groupsDict = [String:String]()

// Dictionary literal
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]

// Another example
var averageLifeSpanDict = [String:Range<Int>]()
var lifeSpanDict = ["African Grey Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]

//: ### Dictionary operations: insert, remove, count, update, retrieve
// Adding items to a dictionary
animalGroupsDict["crows"] = "murder"
animalGroupsDict["monkeys"] = "troop"

// The count method is available to all collections.
animalGroupsDict.count
print(animalGroupsDict)

// Removing items from a dictionary
animalGroupsDict["crows"] = nil
animalGroupsDict

// Updating a value
animalGroupsDict["monkeys"] = "barrel"
var group = animalGroupsDict.updateValue("gaggle", forKey: "geese")
group.dynamicType

animalGroupsDict.updateValue("crash", forKey:"rhinoceroses")
print(animalGroupsDict)

//Retrieving the value for a particular key
let groupOfWhales = animalGroupsDict["whales"]
//: Why would the code below return an optional?
//:
//:     animalGroupsDict["whales"]
// We unwrap a value returned from a dictionary just like we would unwrap any other optional.
if let groupOfWhales = animalGroupsDict["whales"] {
    print("We saw a \(groupOfWhales) of whales from the boat.")
} else {
    print("No value found for that key.")
}

// What happens if the key isn't found?
if let groupOfSasquatches = animalGroupsDict["Sasquatches"] {
    print("We saw a \(groupOfSasquatches) of Sasquatches on our hike.")
} else {
    print("No value found for that key.")
}

//: ## Sets
//: Literal syntax
var cutlery: Set = ["fork", "knife", "spoon"]
var flowers:Set<Character> = ["🌷","🌹","🌸"]
//: Initializer syntax
var utensils = Set<String>()
var trees = Set<Character>()
//: Set operations: Insert, Remove, Count
trees.insert("🌲")
trees.insert("🌳")
trees.insert("🌵")

trees.remove("🌵")
trees.count


