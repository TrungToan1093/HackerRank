//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
    var t1 = (x1 + v1)
    var t2 = (x2 + v2)
    var result = t1 == t2 ? "YES" : "NO"
    
    if x1 < x2 && v1 < v2 {
        result = "NO"
    } else if x2 < x1 && v2 < v1 {
        result = "NO"
    } else if t1 < t2 && v1 > v2 {
        while t1 < t2 {
            t1 += v1
            t2 += v2
            if t1 == t2 {
                result = "YES"
                break
            }
        }
    } else if t1 > t2 && v1 < v2 {
        while t1 > t2  {
            t1 += v1
            t2 += v2
            if t1 == t2 {
                result = "YES"
                break
            }
        }
    }
    return result
}

let res = kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)

//k1:
//> 0
//> 3
//> 6
//> 9
//> 12
//
//k2:
//>4
//>6
//>8
//>10
//>12
