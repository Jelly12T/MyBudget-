//
//  DateUseCase.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import Foundation

protocol DateUseCase {
    func getMoth() -> String
    func getDay() -> String
    func getYear() -> String
}

final class DefaultDateUseCase: DateUseCase {
    
    // MARK: - Implement
    func getMoth() -> String {
        let moth = Calendar.current.component(.month, from: Date())
        return String(moth)
    }
    
    func getDay() -> String {
        let day = Calendar.current.component(.day, from: Date())
        return String(day)
    }
    
    func getYear() -> String {
        let year = Calendar.current.component(.year, from: Date())
        return String(year)
    }
}
