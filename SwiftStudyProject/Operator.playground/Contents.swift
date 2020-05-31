import UIKit

var str = "Hello, playground"

var a = 1
var b = 0

if b == a {
    print("b equal a")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let names = ["zhangsan", "lisi", "wangwu", "zhaoliu"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

for name in names[2...] {
    print(name)
}
print("----------------")
for name in names[...2] {
    print(name)
}
for name in names[..<2] {
    print(name)
}

var welcome = "hello,world"
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

a = 10
b = 8
a = a ^ b
b = a ^ b
a = a ^ b
print(a)
print(b)
