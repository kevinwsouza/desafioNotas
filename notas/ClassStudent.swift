//
//  ClassStudent.swift
//  notas
//
//  Created by Kevin willian Jorge souza on 04/03/21.
//

import Foundation
class Student {
    let nameStudent: String
    let scholarGrade: Int
    var gradeArray: [Float]

    init(nameStudent: String, scholarGrade: Int, gradeArray: [Float]) {
        self.nameStudent = nameStudent
        self.scholarGrade = scholarGrade
        self.gradeArray = gradeArray
    }
}
