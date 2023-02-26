//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func migratoryBirds(arr: [Int]) -> Int {
    // Write your code here
    guard arr.count >= 5,
          arr.count <= 2 * Int64(pow(Double(10),Double(5))) else { fatalError("bad input")}
    var result = 0
    var maxValue = 0
    var map : [Int:Int] = [:]
    arr.forEach {
        if let value = map[$0] {
            let newValue = value + 1
            map[$0] = newValue
            maxValue = newValue > maxValue ? newValue : maxValue
        } else {
            map[$0] = 1
            maxValue = 1 > maxValue ? 1 : maxValue
        }
    }
    
    result = map.filter { item in
        return item.value == maxValue
    }.sorted {
        return $0.key < $1.key
    }.first?.key ?? 0
    
    return result
}

let res = migratoryBirds(arr: [1,1,1,2,2,2,2,3])


