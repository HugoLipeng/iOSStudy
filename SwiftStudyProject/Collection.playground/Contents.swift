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

var numbers2 = [Int](2...7)
numbers2.append(100)
print(numbers2)
numbers2.append(contentsOf: 200...230)
print(numbers2)
numbers2.insert(8, at: 0)
print(numbers2)
numbers2.insert(contentsOf: -1...4, at: 0)
print(numbers2)

var chars2: [Character] = ["a", "b", "c"]
chars2.insert(contentsOf: "hello", at: 0)
print(chars2)
let removedChar = chars2.remove(at: 1)
print(removedChar)
print(chars2)
let removedChar2 = chars2.removeFirst()
print(removedChar2)
print(chars2)
let removedChar3 = chars2.removeLast()
print(removedChar3)
print(chars2)
let removedChar4 = chars2.popLast()
print(removedChar4)
print(chars2)
let removedChar5 = chars2.removeFirst(2)
print(removedChar5)
print(chars2)
let removedChar6 = chars2.removeLast(2)
print(removedChar6)
print(chars2)

let array3 = [5, 2, 10, 1, 0, 100, 46, 99]
array3.dropFirst()
array3.dropFirst(3)
array3.dropLast()
array3.dropLast(3)
print(array3.drop { $0 < 15 })

let array4 = [5, 2, 10, 1, 0, 100, 46, 99]
array4.prefix(4)
array4.prefix(upTo: 4)
array4.prefix(through: 4)
print(array4.prefix { $0 < 10 })

let array5 = [5, 2, 10, 1, 0, 100, 46, 99]
array5.suffix(3)
array5.suffix(from: 5)

let array6 = [5, 2, 10, 1, 0, 100, 46, 99]
array6[3...5]
array6[3..<5]
array6[...2]
array6[..<2]
array6[6...]
array6[...]

var array7 = [5, 2, 10, 1, 0, 100, 46, 99]
let slice = array[3...5]
// ArraySlice 转为 Array
array7 = Array(slice)


// 数组的分组
var array8 = [10, 20, 4, 30, 30, 101, 98, 45]
let index = array8.partition { (element) -> Bool
    in
    element > 30
}
print(array8)
let partition1 = array8[..<index]
let partition2 = array8[index...]
print(partition1)
print(partition2)
