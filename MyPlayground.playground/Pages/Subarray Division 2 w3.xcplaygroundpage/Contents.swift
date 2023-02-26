//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    let count = s.count
    var result: Int = 0
//    var results = [[Int]]()
    guard count >= 1, count <= 100,
          d >= 1, d <= 31,
          m >= 1, m <= 12 else {
              fatalError("Bad input")
          }
    for i in 0..<count {
        guard s[i] >= 1, s[i] <= 5 else { fatalError("Bad input") }
        let arrange = count - m
        if i > arrange {
            return result
        }
        let items = Array(s[i..<m+i])
        print(items)
        if getSum(s: items) == d {
            result += 1
        }
    }
    return result
}


private func getSum(s: [Int]) -> Int {
    return s.reduce(0){ return $0 + $1}
}

let res = birthday(s: [4,5,4,5,1,2,1,4,3,2,4,4,3,5,2,2,5,4,3,2,3,5,2,1,5,2,3,1,2,3,3,1,2,5], d: 18, m: 6)


/*
func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    let count = s.count
    var results = [[Int]]()
    guard count >= 1, count <= 100,
          d >= 1, d <= 31,
          m >= 1, m <= 12 else {
              fatalError("Bad input")
          }
//    let data = s.sorted()
    var iList: [Int] = []
    for i in 0..<count {
        guard s[i] >= 1, s[i] <= 5 else { fatalError("Bad input") }
        let arrange = count - m
        if i > arrange {
            print(results)
            return results.count }
//        print("iiiii: \(i)")
        let iItem = s[i]
        if iList.contains(iItem) {
            continue
        } else {
            iList.append(iItem)
        }
//        print(iList)
        for j in i...arrange {
//            print("jjj: \(j)")
            var tempList = [iItem]
            for z in 0..<m-1 {
//                print("z: \((j+1) + z)")
                tempList.append(s[(j+1) + z])
            }
            if getSum(s: tempList) == d, !isExist(tempList, in: results) {
                results.append(tempList)
            }
        }
    }
    return results.count
}


//let res = birthday(s: [1,2,3,4,5], d: 4, m: 3)
//let res = birthday(s: [1,2,1,3,2], d: 3, m: 2)
//let res = birthday(s: [2,2,1,3,2], d: 4, m: 2)
//4 5 4 5 1 2 1 4 3 2 4 4 3 5 2 2 5 4 3 2 3 5 2 1 5 2 3 1 2 3 3 1 2 5
//18 6


//m= 2
//
//i = 0
//1 2 z = 1
//1 1 z = 2
//1 3 z = 3
//1 2 z = 4
//
//i = 1
//2 1 z = 2
//2 3 z = 3
//2 2 z = 4
//
//1 = 2
//1 3 z = 3
//1 2 z = 4
//
//i = 3
//3 2 z = 4


//m = 2
//
//i = 0
//2 2 j = 1
//2 1 j = 2
//2 3 j = 3
//2 2 j = 4
//
//                       0 1 2 3 4
//let res = birthday(s: [1,2,3,4,5], d: 4, m: 3)
//m = 3
//
//i = 0
//1 2 3 j = 1 2
//1 3 4 j = 2 3
//1 4 5 j = 3 4
//
//i = 1
//2 3 4 j = 2 3
//2 4 5 j = 3 4
//
//i = 2
//3 4 5 j = 4 5


