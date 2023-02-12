import UIKit

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
