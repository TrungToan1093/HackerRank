//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func strings_xor(s: String, t: String) -> String {
    var result: String = ""
    for i in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        if s[index] == t[index] {
            result.append("0")
        } else {
            result.append("1")
        }
    }
    return result
}


let res = strings_xor(s: "10101", t: "00101")
