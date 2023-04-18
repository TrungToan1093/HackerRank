//: [Previous](@previous)
//Các nút thắt trên dây tượng trưng cho hàng đơn vị, hàng chục và hàng trăm.
// Knots in the cords represented units, tens, and hundreds.
import Foundation
let lessThanRule: Int = 3
let multipleRule: Int = 5
let minGradeRound: Int = 40

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    guard 1 <= grades.count, grades.count <= 60 else { fatalError("Bad input") }
    var results : [Int] = []
    for grade in grades {
        guard 0 <= grade, grade <= 100 else { fatalError("Bad input") }
        if grade + lessThanRule <= minGradeRound {
            results.append(grade)
        } else {
            let gradeRounded = roundHanlder(with: grade)
            results.append(gradeRounded)
        }
    }
    return results
}

private func roundHanlder(with grade: Int) -> Int {
    let remider = grade % multipleRule
    if remider > multipleRule - lessThanRule {
        let rounded = multipleRule * ((grade  + multipleRule ) / multipleRule)
        return rounded
    } else {
        return grade
    }
}

let result = gradingStudents(grades: [37, 29, 52])

