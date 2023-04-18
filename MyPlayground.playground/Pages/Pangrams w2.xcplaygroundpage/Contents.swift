//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func pangrams(s: String) -> String {
    // Write your code here
    guard s.count > 0, s.count <= Int64(pow(Double(10),Double(3))) else { fatalError("Bad input") }
    var alphabet: Set<Character> = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var isPangram: Bool = true
    
    for char in s.uppercased() {
        guard char >= "A" && char <= "Z" || char == " " else { fatalError("Bad input") }
        if alphabet.isEmpty {
            break
        } else {
            alphabet.remove(char)
        }
    }
    isPangram = alphabet.isEmpty
    return isPangram ? "pangram" : "not pangram"
}
