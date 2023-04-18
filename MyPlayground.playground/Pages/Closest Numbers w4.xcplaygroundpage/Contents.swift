//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func closestNumbers(arr: [Int]) -> [Int] {
    // Write your code here
    if arr.count == 2 {
        return arr
    }
    
    var result: [Int] = []
    var arrSort = arr.sorted()
    var minCol: [Int:[Int]] = [:]
    var minValue = arrSort[0] + arrSort[1]
    for i in 0..<arrSort.count {
        if i+1 < arrSort.count {
            let currentValue = arrSort[i] + arrSort[i+1]
            if currentValue < minValue {
                minCol.removeAll()
                minValue = currentValue
                minCol[minValue] = [arrSort[i], arrSort[i+1]]
            } else if currentValue == minValue {
                if var list = minCol[minValue] {
                    list.append(contentsOf: [arrSort[i], arrSort[i+1]])
                    minCol[minValue] = list
                } else {
                    minCol[minValue] = [arrSort[i], arrSort[i+1]]
                }
            }
        }
    }
    
    print(minCol[minValue])
    return result
}

let res = closestNumbers(arr: [5,2,3,4,1])

//5,2,3,4,1
//=> [1,2,2,3,3,4,4,5]

//-20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854
//=> -20 30
//
//-20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854 -520 -470
//=> -520 -470 -20 30
