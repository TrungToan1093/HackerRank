import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    let totalCount: CGFloat = CGFloat(arr.count)
    guard totalCount > 0 , totalCount <= 100 else { fatalError("Bad input")}
    var positiveArr: [Int] = []
    var negativeArr: [Int] = []
    for item in arr {
        if item > 0 {
            guard item <= 100 else { fatalError("Bad input")}
          positiveArr.append(item)
        } else if item < 0 {
            guard item >= -100 else { fatalError("Bad input")}
            negativeArr.append(item)
        }
    }
    let positiveRatio: CGFloat = CGFloat(positiveArr.count) / totalCount
    let negativeRatio: CGFloat = CGFloat(negativeArr.count) / totalCount
    let zeroRatio: CGFloat = 1 - positiveRatio - negativeRatio
    print("\(getValueDisplay(positiveRatio))")
    print("\(getValueDisplay(negativeRatio))")
    print("\(getValueDisplay(zeroRatio))")
}

func getValueDisplay(_ value: CGFloat) -> String {
    return String(format: "%.6f", value)
}
//
//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//
//let arr: [Int] = arrTemp.split(separator: " ").map {
//    if let arrItem = Int($0) {
//        return arrItem
//    } else { fatalError("Bad input") }
//}
//
//guard arr.count == n else { fatalError("Bad input") }
//
//plusMinus(arr: arr)

