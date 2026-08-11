//
//  String+Extension.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import Foundation

extension String {
    var currency: String {
        guard let value = Int(self) else {
            return self
        }

        return value.formatted(
            .number.locale(Locale(identifier: "vi_VN"))
        )
    }
}
