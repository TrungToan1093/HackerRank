//: [Previous](@previous)

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var minValue = arr[0]
    var maxValue = arr[0]
    var totalSum: Int64 = 0
    for item in arr {
        guard item >= 1, item <= Int64(pow(Double(10),Double(9))) else { fatalError("Bad input") }
        if item < minValue {
            minValue = item
        } else if item > maxValue {
            maxValue = item
        }
        totalSum += Int64(item)
    }
    let minimumSum = totalSum - Int64(maxValue)
    let maximumSum = totalSum - Int64(minValue)
    print("\(minimumSum) \(maximumSum)")
}

