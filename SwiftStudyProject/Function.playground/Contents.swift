import UIKit

var str = "Hello, playground"

func greet(person: String) -> String {
    return "Hello," + person + "!"
}
print(greet(person: "Hugo"))

// 闭包表达式
let names = ["zhangsan", "lisi", "wangwu"]
//var reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in
//    return s1 > s2
//})
var reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
print(reversedNames)

//from 为实际参数标签  hometown 为形式参数标签
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)"
}
print(greet(person: "Bill", from: "Hugo"))

// 省略实际参数标签
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {

}
someFunction(1, secondParameterName: 2)

func addTwoNumber(num: Int, num2: Int) -> Int {
    return num + num2
}
var mathFunction: (Int, Int) -> Int = addTwoNumber
print(mathFunction(2, 3))

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("result: \(mathFunction(a, b))")
}
