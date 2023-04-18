//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func marsExploration(s: String) -> Int {
    // Write your code here
    let count = s.count
    guard count >= 1, count <= 99, count % 3 == 0 else { fatalError("Bad input") }
    var result = 0
    let samiSent = count/3
    
    for i in 0..<samiSent {
        for j in 0..<3 {
            let index = s.index(s.startIndex, offsetBy: i * 3 + j)
            let char = s[index]
            guard char.isUppercase, char >= "A", char.uppercased() <= "Z" else { fatalError("Bad input") }
            switch j {
            case 0, 2: // => S
                if char != "S" {
                    result += 1
                }
            case 1: // => 0
                if char != "O" {
                    result += 1
                }
            default:
                fatalError("Bad input")
            }
        }
    }
    return result
}
