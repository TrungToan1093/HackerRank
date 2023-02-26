//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func pickingNumbers(a: [Int]) -> Int {
    // Write your code here
    var result = 0
    let aSort = a.sorted()
    var listCount: [[Int]] = []
    for i in 0..<aSort.count {
        var meetingTheCritertion: [Int] = [aSort[i]]
        for j in i+1..<aSort.count {
            if abs(aSort[i] - aSort[j]) <= 1 {
                meetingTheCritertion.append(aSort[j])
            }
        }
        listCount.append(meetingTheCritertion)
    }
    listCount.forEach {
        if result < $0.count {
            result = $0.count
        }
    }
    
    return result
}

let res = pickingNumbers(a: [1,1,2,2,4,4,5,5,5])
//let res = pickingNumbers(a: [1,2,3,3,4,5])

//1 2 3 3 4 5
//
//
//> [1,2]
//> [2,3,3]
//> [3,3,4]
//> [3,4]
//> [4,5]
