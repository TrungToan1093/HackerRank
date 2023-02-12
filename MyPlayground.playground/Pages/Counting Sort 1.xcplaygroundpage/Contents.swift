//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func countingSort(arr: [Int]) -> [Int] {
    // Write your code here
    
//    guard arr.count >= 100, arr.count <= Int64(pow(Double(10),Double(6))) else { fatalError("Bad input") }
    var arrCount = [Int]()
    for item in arr {
        guard item >= 0, item < 100 else { fatalError("Bad input") }
        if arrCount.count == 0 {
            if item == 0 {
                arrCount.append(0)
            } else {
                for i in 0...item {
                    if i == item {
                        arrCount.append(1)
                    } else {
                        arrCount.append(0)
                    }
                }
            }
        } else if arrCount.count > item {
            let value = arrCount[item] + 1
            arrCount[item] = value
        } else {
            for i in arrCount.count-1..<item {
                if i+1 == item {
                    arrCount.append(1)
                } else {
                    arrCount.append(0)
                }
            }
        }
    }
    let count = arrCount.count
    if count < 100 {
        for _ in count..<100 {
            arrCount.append(0)
        }
    }
    return arrCount
}


let res = countingSort(arr: [1, 1, 3, 2, 1])
//=> 0 1 2 3
//[0,1,2,3]
//0,0,0,1
