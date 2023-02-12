//: [Previous](@previous)
//https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html
import Foundation

func flippingBits(n: Int) -> Int {
    // Write your code here
    let binaryString = String(n, radix: 2)
    let _32binaryString = pad(string : binaryString, toSize: 32)
    let flitBinary = flipBinaryString(_32binaryString)
    let result = (Int(flitBinary, radix: 2)!)
    return result
}

func pad(string : String, toSize: Int) -> String {
  var padded = string
  for _ in 0..<(toSize - string.count) {
    padded = "0" + padded
  }
    return padded
}

func flipBinaryString(_ binary: String) -> String {
    return binary.reduce("") {
        if String($1) == "0" {
            return  $0 + "1"
        } else if String($1) == "1" {
            return  $0 + "0"
        }
        return $0 + String($1)
    }
}

//let binaryString = "11111111111111111111111111111110"
//print(Int(binaryString, radix: 2)!)
//let num = 22
//let str = String(num, radix: 2)
//print(str) // 10110
let rs = flippingBits(n: 0)
