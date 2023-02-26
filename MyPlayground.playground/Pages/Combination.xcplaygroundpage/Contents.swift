//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func getCombination(with arr: [Int], range: Int) -> [[Int]] {
    return combinations(arr, takenBy: range)
}

func combinations<T>(_ source: [T], takenBy : Int) -> [[T]] {
    if(source.count == takenBy) {
        return [source]
    }

    if(source.isEmpty) {
        return []
    }

    if(takenBy == 0) {
        return []
    }

    if(takenBy == 1) {
        return source.map { [$0] }
    }

    var result : [[T]] = []
    
    let rest = Array(source.suffix(from: 1))
    let sub_combos = combinations(rest, takenBy: takenBy - 1)
    result += sub_combos.map { [source[0]] + $0 }

    result += combinations(rest, takenBy: takenBy)

    return result
}

let res = getCombination(with: [0,1,2,3], range: 3)
print(res)

