//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func separateNumbers(s: String) -> Void {
    // Write your code here
    var numbers: [Int] = []
    s.forEach {
        if let item = Int(String($0)) {
            numbers.append(item)
        }
    }
    var currentValue = numbers.first!
    var currentIndex: [Int] = []
    var count: Int {
        return currentIndex.count
    }
    for i in 0..<numbers.count {
        if currentIndex.contains(i) { continue }
        
        
    }
}

separateNumbers(s: "123")
//"1234" => "1" "2" "3" "4"
//1 2 => passwd
//2
//
//current = 9
//
//"9101112" => "9" "10" "11"
//9 1 => fail => currentValue = 9 , i = 1
//9 10 => pass => currentValue = 10, currentindex = [1,2] i = 2
//10 11> pass => current = 11, i = 4
//11 12 > pass > current = 12 i = 6
//
//"99100" => "99" "100"
