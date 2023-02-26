//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var result: Int = 0
    var map : [Int:Int?] = [:]
    ar.forEach {
        if let item = map[$0], let value = item {
            map[$0] = value + 1
        } else {
            map[$0] = 1
        }
    }
    
    for (_,value) in map {
        if let value = value {
            result += value/2
        }
    }
    return result
}


let res = sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
