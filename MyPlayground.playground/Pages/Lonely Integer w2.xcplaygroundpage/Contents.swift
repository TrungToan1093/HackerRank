//: [Previous](@previous)

import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    //Validate
    let count = a.count
    guard 1 <= count, count <= 100 else { fatalError("Bad input") }
    
    var contains : [Int:Int] = [:]
    for item in a {
        guard 0 <= item, item <= 100 else { fatalError("Bad input") }
        if let value = contains[item] {
            contains[item] = value + 1
        } else {
            contains[item] = 1
        }
    }
    guard let result = contains.filter({ return $1 == 1 }).keys.first else { fatalError("Bad input") }
    return result
}

let rs = lonelyinteger(a: [1,2,3,4,3,2,1])

