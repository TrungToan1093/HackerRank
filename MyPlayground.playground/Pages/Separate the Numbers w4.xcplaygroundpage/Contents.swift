//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var result = ""
func separateNumbers(s: String) -> Void {
    guard s.count > 1 else {
        print("NO")
        return
    }
    result = "NO"
    for i in 1...s.count/2 {
        let first = String(s.prefix(i))
        let newsString = String(s.dropFirst(i))
        let displayString = "\(first)"
        check(currentValue: first, s: newsString, displayString: displayString)
    }
    print(result)
}

func check(currentValue: String, s: String, displayString: String) {
    let range = currentValue.count
    if s.isEmpty {
        result = ("YES \(displayString)")
        return
    }
    let nextValue = String(s.prefix(range))
    if oneMoreThanCondition(lhs: currentValue, rhs: nextValue) && leadingCodition(value: nextValue) {
        let newsString = String(s.dropFirst(range))
//        let newsDisplayString = displayString + " + " + "\"\(nextValue)\""
        check(currentValue: nextValue, s: newsString, displayString: displayString)
    } else if range + 1 <= s.count {
        let next2Value = String(s.prefix(range + 1))
        if oneMoreThanCondition(lhs: currentValue, rhs: next2Value) && leadingCodition(value: next2Value) {
            let newsString = String(s.dropFirst(range + 1))
//            let newsDisplayString = displayString + " + " + "\"\(next2Value)\""
            check(currentValue: next2Value, s: newsString, displayString: displayString)
        }
    }
}

func oneMoreThanCondition(lhs: String, rhs: String) -> Bool {
    let lhsInt = Int(lhs) ?? 0
    let rhsInt = Int(rhs) ?? 0
    return lhsInt + 1 == rhsInt
}

func leadingCodition(value: String) -> Bool {
    return value.first != "0"
}

separateNumbers(s: "789")

//
//91011
//
//input:
//currentValue
//List
//
//
//get count = currentValue.count
//guard count <= list.count else return
//
//
//> range = count
//get nextValue = list[0...<range]
//
//
//
//check(range: 1, s: "12345")
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
