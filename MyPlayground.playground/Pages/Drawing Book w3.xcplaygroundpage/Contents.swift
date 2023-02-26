//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    let a = p/2
    let b = n/2 + 1 -  p/2
    return min( p/2, n/2 - p/2)
//    one page includes 2 slide
//    tong trang = n/2 + 1
//    trang hien tai = tu p/2 + 1
//
//
//
//    01 23 45
//    var result = 0
//    5 / 2 = 3 => l
//    if n / 2 >= p {
////        left to right
//
//    } else {
////         right to left
//    }
    
//    return result
}

let res = pageCount(n:8, p:4)


