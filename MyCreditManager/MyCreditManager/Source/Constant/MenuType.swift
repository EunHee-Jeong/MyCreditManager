//
//  MenuType.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/20.
//

import Foundation

enum MenuType: String, CaseIterable {
    case 학생추가 = "1"
    case 학생삭제 = "2"
    case 성적추가 = "3"
    case 성적삭제 = "4"
    case 평점보기 = "5"
}

extension MenuType {
    var description: String {
        switch self {
        case .학생추가:
            return "추가할 학생의 이름을 입력해주세요"
        case .학생삭제:
            return "삭제할 학생의 이름을 입력해주세요"
        case .성적추가:
            return "성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift A+\n만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다."
        case .성적삭제:
            return "성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요."
        case .평점보기:
            return "평점을 알고싶은 학생의 이름을 입력해주세요"
        }
    }
    var service: Void {
        switch self {
        case .학생추가:
            return DefaultMyCreditClass.shared.addStudent(readLine()!)
        case .학생삭제:
            return DefaultMyCreditClass.shared.deleteStudent(readLine()!)
        case .성적추가:
            let inputArr = readLine()!.split(separator: " ").map { String($0) }
            return DefaultMyCreditClass.shared.addScore(name: inputArr[0], subject: inputArr[1], grade: inputArr[2])
        case .성적삭제:
            let inputArr = readLine()!.split(separator: " ").map { String($0) }
            return DefaultMyCreditClass.shared.deleteScore(name: inputArr[0], subject: inputArr[1])
        case .평점보기:
            return DefaultMyCreditClass.shared.getGrade(readLine()!)
        }
    }
}
