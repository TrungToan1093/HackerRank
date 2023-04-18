//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var sumLeftToRightDiagonal = 0
    var sumRightToLeftDiagonal = 0
    for i in 0..<arr.count {
        guard -100 <= arr[i][i], arr[i][i] <= 100 else { fatalError ("bar input") }
        sumLeftToRightDiagonal += arr[i][i]
        sumRightToLeftDiagonal += arr[i][arr.count-i-1]
    }
    
    return abs(sumLeftToRightDiagonal - sumRightToLeftDiagonal)
}
let input = [[1,2,3], [4,5,6], [7,8,9]]
let res = diagonalDifference(arr: input)



//1 2 3
//4 5 6
//7 8 9
//i = 0 => j = 2
//count = 3
//
//i = 1 => j = 1
//count = 3
//
//i = 2 => j = 0
