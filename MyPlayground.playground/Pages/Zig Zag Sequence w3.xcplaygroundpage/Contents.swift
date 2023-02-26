//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func findZigZagSequence(a: [Int], n: Int) -> [Int] {
    var result: [Int] = []
    result = a.sorted {
        $0 < $1
    }
    let mid = n/2
    result.swapAt(mid, n-1)
    var st = mid+1
    var ed = n-2

    while st <= ed {
        result.swapAt(st, ed)
        st += 1
        ed -= 1
    }

    return result
}

let res = findZigZagSequence(a: [1,2,3,4,5,6,7,9,8], n: 9)

