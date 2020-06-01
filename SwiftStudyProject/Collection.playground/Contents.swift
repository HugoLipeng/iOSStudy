import UIKit

var str = "Hello, playground"

var array = [1, 2, 3, 4]
print(array)
array = []
print(array)

let fiveZs = Array(repeating: "Z", count: 6)
print(fiveZs)

let chars = Array("hello")
print(chars)

let numbers = Array(1...9)
print(numbers)

let persons = ["zhangsan": 13, "lisi": 14, "wangwu": 16]
let names = Array(persons.keys)
print(names)

numbers.forEach { (num) in
    if num == 3 {
        return
    }
    print(num)
}

for (index, num) in numbers.enumerated() {
    print("the index is \(index)")
    print(num)
}

for i in 0..<numbers.count {
    print("the index is \(i)")
    print(numbers[i])
}

var it = numbers.makeIterator()
while let num = it.next() {
    print(num)
}

for i in numbers.indices {
    print("the index is \(i)")
    print(numbers[i])
}

array = [10, 20, 45, 30, 98, 101, 30, 4]
print(array.contains(30))
print(array.contains(where: { $0 < 3 }))
print(array.allSatisfy({ $0 > 3 }))

print(array.min())
print(array.max())
