//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    
    guard steps >= 2, steps <= Int64(pow(Double(10),Double(6))) else { fatalError("Bad input") }
    
    var isSeaLever: Bool = true
    
    var nextStep: Int = 0
    
    var result = 0
    
    for step in path {
        switch step {
        case "U": // => up
            nextStep += 1
            break
        case "D": // => down
            nextStep -= 1
            break
        default:
            fatalError("Bad input")
        }
        
        if isSeaLever && (nextStep < 0) {
            isSeaLever = false
            result += 1
        } else if nextStep == 0 && !isSeaLever {
            isSeaLever = true
        }
        
    }
    
    return result
}

let res = countingValleys(steps: 8, path: "UDDDUDUU")
  
