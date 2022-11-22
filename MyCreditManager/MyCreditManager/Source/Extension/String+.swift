//
//  String+.swift
//  MyCreditManager
//
//  Created by 정은희 on 2022/11/22.
//

import Foundation

extension String {
    func isValidInput() -> Bool {
        let inputRegEx = "^[X1-5]{1,}$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return predicate.evaluate(with: self)
    }
}
