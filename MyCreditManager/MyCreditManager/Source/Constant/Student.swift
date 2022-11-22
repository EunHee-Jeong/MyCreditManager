//
//  Student.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/20.
//

import Foundation

var studentList: [Student] = []

class Student {
    let name: String
    var grade: [Grade]
    
    init(name: String, grade: [Grade]) {
        self.name = name
        self.grade = grade
    }
}
