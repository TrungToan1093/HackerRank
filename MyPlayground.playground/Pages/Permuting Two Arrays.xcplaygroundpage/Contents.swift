//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    // Write your code here
    var result: Bool = true
    let A1 = A.sorted { return $0 <= $1 }
    let B1 = B.sorted { return $1 <= $0 }
    let size = A.count
    guard size >= 1, size <= 1000,
          k >= 1, k <= Int64(pow(Double(10),Double(9))) else { fatalError("Bad input") }
    for i in 0..<size {
        let value = A1[i] + B1[i]
        guard value >= 0, value <= Int64(pow(Double(10),Double(9))) else { fatalError("Bad input") }
        if value < k {
            result = false
            break
        }
    }
    return result ? "YES" : "NO"
    
}

let res = twoArrays(k: 10, A: [2, 1, 3], B: [7, 8, 9])
