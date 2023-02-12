//: [Previous](@previous)

import Foundation

//: [Next](@next)
enum OperationType: String {
    case split = "S"
    case combine = "C"
}
enum CamelCaseType: String {
    case method = "M"
    case `class` = "C"
    case variable = "V"
}

func getCamelCaseNameList(with strings: [String]) -> [String] {
    return strings.compactMap {
        return getCamelCaseName(with: $0)
    }
//    strings.forEach {
//        print("\(getCamelCaseName(with: $0))")
//    }
}

// Enter your code here
func getCamelCaseName(with string: String) -> String {
    let strArray = string.split(separator: ";")
    guard strArray.count >= 2,
            let operationType = OperationType(rawValue: String(strArray[0])),
            let namelCaseType = CamelCaseType(rawValue: String(strArray[1])) else {
        fatalError("bad input")
    }
    let text = String(strArray[2])
    guard text.count > 1 else { fatalError("bad input") }
    switch (operationType, namelCaseType) {
    case (.split, .method): // Input plasticCup() => plastic() cup()
        return sMHander(text)
    case (.split, .`class`):
        return sCHander(text)
    case (.split, .variable):
        return sVHander(text)
    case (.combine, .method):
        return cMHander(text) + "()"
    case (.combine, .`class`):
        return cCHander(text)
    case (.combine, .variable):
        return cVHander(text)
    }
}

private func sMHander(_ text: String) -> String {
    return text.unicodeScalars.reduce("") {
        if CharacterSet.uppercaseLetters.contains($1) {
            if $0.count > 0 {
                return ($0 + " " + String($1).lowercased())
            }
        }
        if String($1) == "(" || String($1) == ")" {
            return $0
        }
        return $0 + String($1)
    }
}

private func sCHander(_ text: String) -> String {
    return text.unicodeScalars.reduce("") {
        if CharacterSet.uppercaseLetters.contains($1) {
            if $0.count > 0 {
                return ($0 + " " + String($1).lowercased())
            }
        }
        return $0 + String($1).lowercased()
    }
}

private func sVHander(_ text: String) -> String {
//    var uperCaseCount: Int = 0
    let result = text.unicodeScalars.filter(CharacterSet.alphanumerics.inverted.contains).reduce("") {
        print("SV 0: \($0)")
        print("SV 1: \($1)")
        if CharacterSet.uppercaseLetters.contains($1) {
            if $0.count > 0 {
//                uperCaseCount += 1
                return ($0 + " " + String($1).lowercased())
            }
        }
        return $0 + String($1)
    }
//    return uperCaseCount > 1 ? result : text
    return result
}

private func cMHander(_ text: String) -> String {
    return text.split(separator: " ").reduce("") {
        if $0.count > 0 {
            return $0 + String($1.capitalized)
        }
        return $0 + String($1)
    }
}

private func cCHander(_ text: String) -> String {
    return text.split(separator: " ").reduce("") {
        return $0.capitalized + String($1).capitalized
    }
}

private func cVHander(_ text: String) -> String {
    return text.split(separator: " ").reduce("") {
        if $0.count > 0 {
            return $0 + String($1.capitalized)
        }
        return $0 + String($1)
    }
}

let resSM = getCamelCaseNameList(with: ["C;V;can of coke",
                                        "S;M;sweatTea()",
                                       "S;V;epsonPrinter",
                                       "C;M;santa claus",
                                       "C;C;mirror"])
//let resCV = getCamelCaseName(with: "C;V;mobile phone")
//let resCC = getCamelCaseName(with: "C;C;code swarm")
//let resSC = getCamelCaseName(with: "S;C;OrangeHighlighter")
//let resCM = getCamelCaseName(with: "C;M;mouse pad")
//let resSV = getCamelCaseName(with: "S;V;iPad")

/** sample input
 
 let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
 FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
 let fileHandle = FileHandle(forWritingAtPath: stdout)!

 guard let scoresTemp = readLine()
 else { fatalError("Bad input") }
 print("aaa \(scoresTemp)")
 let scores: [String] = scoresTemp.split(separator: "\n").map {
     return String($0)
 }

 // guard let s = readLine() else { fatalError("Bad input") }
 let result = getCamelCaseNameList(with: scores)

 result.forEach {
     fileHandle.write($0.data(using: .utf8)!)
 }
 // fileHandle.write(result.map{ String($0) }.joined(separator: " ").data(using: .utf8)!)
 // fileHandle.write("\n".data(using: .utf8)!)
 */
