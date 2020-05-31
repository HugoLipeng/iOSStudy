import UIKit

var str = "Hello, playground"

let dict = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in dict {
    print("\(animalName) has \(legCount) legs")
}

for i in stride(from: 0, through: 51, by: 5) {
    print(i)
}

let base = 3
let power = 5
var result = 1
for _ in 1...power {
    result *= base
}
print(result)

var count = 0
repeat {
    print(count)
    count += 1
} while count < 5

let char: Character = "A"
switch char {
case "a", "A":
    print("the first")
case "z":
    print("the last")
default:
    print("other")
}
