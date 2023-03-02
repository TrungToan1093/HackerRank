//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func separateNumbers(s: String) -> Void {

}

func check(range: Int, s: String) {
    guard range < s.count else { return }
    
//    print("range: \(range), s:\(s)")
    
    let value = s.prefix(range)
    let nextstart = s.index(s.startIndex, offsetBy: range)
    let nextend = s.index(nextstart, offsetBy: range)
    let nextRange = nextstart..<nextend
    let nextValue = s[nextRange]
    
//    if value + 1 == nextValue {
//        let count = String(nextValue).count
//        check(range: count, s: String(s.dropFirst(count)))
//    } else if value + 1 == nextValue2 {
//        let count = String(nextValue2).count
//        check(range: count, s: String(s.dropFirst(count)))
//    } else {
////        ==> fail
//    }
    
    
    
    if (Int(value) ?? 0) + 1 == (Int(nextValue) ?? 0) {
        print("value: \(nextValue)")
        check(range: nextValue.count, s: String(s.dropFirst(nextValue.count)))
//        ==> pass
    } else if Int(value.dropLast()) ?? 0 == 9 {
        let nextend2 = s.index(nextstart, offsetBy: range+1)
        let nextRange2 = nextstart..<nextend2
        let nextValue2 = s[nextRange2]
        if (Int(value) ?? 0) + 1 == (Int(nextValue2) ?? 0) {
//            ==> pass

            check(range: nextValue2.count, s: String(s.dropFirst(nextValue2.count)))
        } else {
            
        }
    } else {
        
    }
}

check(range: 1, s: "12345")

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
