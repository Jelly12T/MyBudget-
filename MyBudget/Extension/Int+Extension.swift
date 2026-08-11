//
//  Int+Extension.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import Foundation

extension Int {
    var currency: String {
        return self.formatted(
            .number.locale(Locale(identifier: "vi_VN"))
        )
    }
}
