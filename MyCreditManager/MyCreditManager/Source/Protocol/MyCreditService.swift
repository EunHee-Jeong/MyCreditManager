//
//  MyCreditService.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/20.
//

import Foundation

protocol MyCreditService {
    func addStudent(_ value: String)
    func deleteStudent(_ value: String)
    func addScore(name: String, subject: String, grade: String)
    func deleteScore(name: String, subject: String)
    func getGrade(_ value: String)
}
