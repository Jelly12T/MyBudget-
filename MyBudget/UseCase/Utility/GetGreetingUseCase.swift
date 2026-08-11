//
//  GetGreetingUseCase.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import Foundation

enum TimeOfDay {
    case morning
    case lunch
    case afternoon
    case evening
    
    var title: String {
        switch self {
        case .morning:
            return "sáng"
        case .lunch:
            return "trưa"
        case .afternoon:
            return "chiều"
        case .evening:
            return "tối"
        }
    }
    
    var icon: String {
        switch self {
        case .morning:
            return "🌅"
        case .lunch:
            return "☀️"
        case .afternoon:
            return "🌇"
        case .evening:
            return "🌙"
        }
    }
}

protocol GetGreetingUseCase {
    func getGettingUser(_ name: String) -> String
}

final class DefaultGetGreetingUseCase: GetGreetingUseCase {
    func getGettingUser(_ name: String) -> String {
        let hour = Calendar.current.component(.hour, from: Date())
        var timeOfDay = TimeOfDay.morning
        switch hour {
        case 5 ..< 12:
            timeOfDay = .morning
        case 12 ..< 14:
            timeOfDay = .lunch
        case 14 ..< 19:
            timeOfDay = .afternoon
        default:
            timeOfDay = .evening
        }
        
        return "Chào buổi \(timeOfDay.title), \(name) \(timeOfDay.icon)"
    }
}
