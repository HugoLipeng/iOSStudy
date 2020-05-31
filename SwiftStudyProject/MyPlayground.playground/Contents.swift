import UIKit

//var str = "Hello, playground"
let x = 0.0, y = 0.0, z = "123"
print("x = \(x), y = \(y), z = \(z)")

let a = 8
let b: UInt8 = 240
print("UInt8 min \(UInt8.min), UInt8 max \(UInt.max)")

let i = 1
if i == 1 {
    print(i)
}

typealias AudioSample = UInt8
let sample: AudioSample = 32

//let error = (1, "没有权限")
//print(error)
//print(error.0)
//print(error.1)

//let error = (1, "没有权限")
//let (errorCode, errorMessage) = error
//print(errorCode)
//print(errorMessage)

func writeFile(content: String) -> (errorCode: Int, errorMessage: String){
    return (1, "没有权限")
}

let error = writeFile(content: "")
print(error)

var str1: String? = nil
var str2: String? = "adc"
if str2 != nil {
    let count = str2!.count
    print(count)
}

var str3: Optional<String> = "bcd"
if let actualStr = str3 {
    let count = actualStr.count
    print(count)
}

