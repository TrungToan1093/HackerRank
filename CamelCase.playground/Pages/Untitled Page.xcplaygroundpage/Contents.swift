import Foundation

/*
 * Complete the 'matchingStrings' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. STRING_ARRAY strings
 *  2. STRING_ARRAY queries
 */

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    // Write your code here
    let n = strings.count
    let q = queries.count
    guard 1 <= n, n <= 1000,
            1 <= q, q <= 1000 else { fatalError("Bad input") }
    var results: [Int] = []
    for query in queries {
        guard 1 <= query.count, query.count <= 20 else { fatalError("Bad input") }
        var countStringOccurs = 0
        for string in strings {
            guard 1 <= string.count, string.count <= 20 else { fatalError("Bad input") }
            if string == query {
               countStringOccurs += 1
            }
        }
        results.append(countStringOccurs)
    }
    return results
}

let res = matchingStrings(strings: ["aba", "baba"], queries: ["aba", "baba"])

//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//guard let stringsCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//var strings = [String]()
//
//for _ in 1...stringsCount {
//    guard let stringsItem = readLine() else { fatalError("Bad input") }
//
//    strings.append(stringsItem)
//}
//
//guard strings.count == stringsCount else { fatalError("Bad input") }
//
//guard let queriesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//var queries = [String]()
//
//for _ in 1...queriesCount {
//    guard let queriesItem = readLine() else { fatalError("Bad input") }
//
//    queries.append(queriesItem)
//}
//
//guard queries.count == queriesCount else { fatalError("Bad input") }
//
//let res = matchingStrings(strings: strings, queries: queries)
//
//fileHandle.write(res.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
//fileHandle.write("\n".data(using: .utf8)!)
