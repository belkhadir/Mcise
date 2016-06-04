//: ## Control Flow

import UIKit



//: Example of loop `for`-`in`, iterate over sequence
let individualScores = [100, 50,75,32,10]
var teamScore = 0
for singleScore in individualScores {
    teamScore += singleScore
}
print(teamScore)

let dictionary = [
    "prapra": 10,
    "blabla": 20,
    "fofo": 30
]

for (key, value) in dictionary {
    print("the key \(key), the value \(value)")
}

//: No need for the key not a problem 

for (_,value) in dictionary {
    print("the value: \(value)")
}

//: another to use loop for
for index in 0..<5 {
    print(index)
}

//: Example of loop while
let supperMan = true
var times = 0
while supperMan && times <= 5 {
    print("im hero")
    times = times + 1
}

//: Example of repeat-while
repeat {
    print("im hero")
    times = times - 1
}while supperMan && times >= 5

