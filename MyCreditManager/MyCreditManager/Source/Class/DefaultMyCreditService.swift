//
//  DefaultMyCreditService.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/22.
//

import Foundation

final class DefaultMyCreditClass: MyCreditClass {
    static let shared = DefaultMyCreditClass()
    
    func myCreaditManager() {
        var exitValue: Bool = true
        
        while exitValue {
            print("""
              원하는 기능을 입력해주세요
              1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기: X: 종료
              """)
            
            let input = readLine()!
            
            switch input {
            case "1":
                print(MenuType.학생추가.description)
                MenuType.학생추가.service
            case "2":
                print(MenuType.학생삭제.description)
                MenuType.학생삭제.service
            case "3":
                print(MenuType.성적추가.description)
                MenuType.성적추가.service
            case "4":
                print(MenuType.성적삭제.description)
                MenuType.성적삭제.service
            case "5":
                print(MenuType.평점보기.description)
                MenuType.평점보기.service
            case "X":
                print("프로그램을 종료합니다...")
                exitValue = false
            default:
                print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
            }
        }
    }
}
