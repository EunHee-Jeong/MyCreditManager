//
//  MyCreditClass.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/22.
//

import Foundation

class MyCreditClass: MyCreditService {
    func addStudent(_ value: String) {
        if studentList.contains(where: { $0.name == value }) {
            print("\(value)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        }
        else {
            studentList.append(Student(name: value, grade: []))
            print("\(value) 학생을 추가했습니다.")
        }
    }
    func deleteStudent(_ value: String) {
        if let index = studentList.firstIndex(where: { $0.name == value }) {
            studentList.remove(at: index)
            print("\(value) 학생을 삭제하였습니다.")
        }
        else {
            print("\(value) 학생을 찾지 못했습니다.")
        }
    }
    func addScore(name: String, subject: String, grade: String) {
        if let nameIdx = studentList.firstIndex(where: { $0.name == name }) {
            if let subjectIdx = studentList[nameIdx].grade.firstIndex(where: { $0.subject == subject }) {
                studentList[nameIdx].grade[subjectIdx].score = grade
            }
            else {
                studentList[nameIdx].grade.append(Grade(subject: subject, score: grade))
            }
            print("\(name) 학생의 \(subject) 과목이 \(grade)로 추가(변경)되었습니다.")
        }
        else {
            print("\(name) 학생을 찾지 못했습니다.")
        }
    }
    func deleteScore(name: String, subject: String) {
        if let nameIdx = studentList.firstIndex(where: { $0.name == name }) {
            if let subjectIdx = studentList[nameIdx].grade.firstIndex(where: { $0.subject == subject }) {
                studentList[nameIdx].grade.remove(at: subjectIdx)
                print("\(name) 학생의 \(subject) 과목의 성적이 삭제되었습니다.")
            }
            else {
                print("\(name) 학생의 \(subject) 과목을 찾지 못했습니다.")
            }
        }
        else {
            print("\(name) 학생을 찾지 못했습니다.")
        }
    }
    func getGrade(_ value: String) {
        if let index = studentList.firstIndex(where: { $0.name == value }) {
            var temp: Double = 0
            studentList[index].grade.forEach { grades in
                print("\(grades.subject): \(grades.score)")
                
                switch grades.score {
                case "A+":
                    temp +=  4.5
                case "A":
                    temp += 4
                case "B+":
                    temp += 3.5
                case "B":
                    temp += 3
                case "C+":
                    temp += 2.5
                case "C":
                    temp += 2
                case "D+":
                    temp += 1.5
                case "D":
                    temp += 1
                default:
                    temp += 0
                }
            }
            let grade = temp / Double(studentList[index].grade.count)
            print("평점 : \(String(format: "%.2f", grade))")
        }
        else {
            print("\(value) 학생을 찾지 못했습니다.")
        }
    }
}
