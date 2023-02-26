//: [Previous](@previous)

import Foundation
var greeting = "Hello, playground"

var theLargestPreimeter = 0
var theLargestRectangles: [[Int]] = []

func maximumPerimeterTriangle(sticks: [Int]) -> [Int] {
    // Write your code here
    var result: [Int] = []
    let count = sticks.count
    var rectangles: [[Int]] = []
    guard count >= 3,
          count <= 50 else { fatalError("bad input") }
    //range = 3
    var sticksSort = sticks.sorted {
        return $0 < $1
    }
    for i in 0...sticksSort.count - 3 {
        for j in i+1...sticksSort.count - 2 {
            for z in j+1..<sticksSort.count {
                var rec: [Int] = []
                rec.append(sticksSort[i])
                rec.append(sticksSort[j])
                rec.append(sticksSort[z])
                if validateRectangle(items: rec) {
                    rectangles.append(rec)
                    findTheLargestRectangles(rec: rec)
                }
            }
        }
    }

    if rectangles.count == 0 {
        result = [-1]
    } else if theLargestRectangles.count == 1 {
        result = theLargestRectangles[0]
    } else {
        result = applyLongestSlideMin(recs: theLargestRectangles)[0]
    }
    return result
}


func applyLongestSlide(recs: [[Int]]) -> [Int] {
    var result = applyLongestSlideMax(recs: recs)
    if result.count > 1 {
        result = applyLongestSlideMin(recs: result)
    }
    return result[0]
}

func applyLongestSlideMax(recs: [[Int]]) -> [[Int]] {
    var longestSlideMax = 0
    var result = [[Int]]()
    recs.forEach { item in
        let slideMax = item.max() ?? 0
        if slideMax > longestSlideMax {
            longestSlideMax = slideMax
            result.removeAll()
            result.append(item)
        } else if slideMax == longestSlideMax {
            result.append(item)
        }
    }
    return result
}

func applyLongestSlideMin(recs: [[Int]]) -> [[Int]] {
    var longestSlideMin = 0
    var result = [[Int]]()
    recs.forEach { item in
        let slideMin = item.first ?? 0
        if slideMin > longestSlideMin {
            longestSlideMin = slideMin
            result.removeAll()
            result.append(item)
        } else if slideMin == longestSlideMin {
            result.append(item)
        }
    }
    return result
}

func findTheLargestRectangles(rec: [Int]) {
    let largestItem = rec.last ?? 0
    if largestItem > theLargestPreimeter {
        theLargestPreimeter = largestItem
        theLargestRectangles.removeAll()
        theLargestRectangles.append(rec)
    } else if largestItem == theLargestPreimeter {
        theLargestRectangles.append(rec)
    }
}

func validateRectangle(items: [Int]) -> Bool {
    guard items.count == 3 else { fatalError("bad input")}
    guard items[0] + items[1] > items[2],
          items[0] + items[2] > items[1],
          items[1] + items[2] > items[0] else { return false}
    return true
}

let a = [3900717,53516059,288589053,23189292,21487730,94997775,260173,41298280,47784002,23032379,67686298,48162481,44775136,47340544,2165965,34202258,81746554,57179615,6240306,33110389,7424599,41389013,480910581,86150390,13777985,96265144,89266112,316419,74896112,192317271,63729818,40712188,19111441,25556170,33808338,96043868,90508879,88229925,62520492,49835454,78096135,54610351,78888361,10300724,34843471,38439667,81892481,16254176,24261693,84190486]
//let a = [1,2,5,6,3,4]
let res = maximumPerimeterTriangle(sticks: a)
print(res)
//1 2 3 4 5 10
//1 2 3
//1 2   4
