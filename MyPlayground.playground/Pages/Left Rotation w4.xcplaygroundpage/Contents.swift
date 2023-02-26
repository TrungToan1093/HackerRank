//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    // Write your code here
    var result: [Int] = arr
    for i in 0..<d {
        result.remove(at: 0)
        result.append(arr[i])
    }
    return result
}

let res = rotateLeft(d:4, arr:[1,2,3,4,5])


//1,2,3,4,5

//>0 swap count -1
//>1 swap 0
//>2 swap 1
//>3 swap 2
//>4 swap 3
//d=2
//>2,3,4,5,1
//>3,4,5,1,2
//
//d=4
//>2,3,4,5,1
//>3,4,5,1,2
//>4,5,1,2,3
//>5,1,2,3,4
