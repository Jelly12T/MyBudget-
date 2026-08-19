//
//  TransactionCategory.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI

enum TransactionCategory: Hashable {
    case spending(Spending)
    case income(Income)

    var isIncome: Bool {
        if case .income = self { return true }
        return false
    }
    
    var isIncomeColor: Color {
        return self.isIncome ? Color("30D158") : Color("FF453A")
    }
    
    var title: String {
        switch self {
        case .spending(let s): return s.title
        case .income(let i):   return i.title
        }
    }

    var icon: String {
        switch self {
        case .spending(let s): return s.icon
        case .income(let i):   return i.icon
        }
    }

    var color: Color {
        switch self {
        case .spending(let s): return Color(s.color)
        case .income(let i):   return Color(i.color)
        }
    }
}

enum Spending: String, CaseIterable, Codable {
    case bank, eat, coffee, move, rent, bill, invest
    case shopping, health, study, entertainment, common

    var title: String {
        switch self {
        case .bank:          return "Ngân hàng"
        case .eat:           return "Ăn uống"
        case .coffee:        return "Cà phê"
        case .move:          return "Di chuyển"
        case .rent:          return "Thuê nhà"
        case .bill:          return "Hóa đơn"
        case .shopping:      return "Mua sắm"
        case .health:        return "Sức khỏe"
        case .study:         return "Học tập"
        case .entertainment: return "Giải trí"
        case .common:        return "Chi tiêu"
        case .invest:         return "Đầu tư"
        }
    }

    var icon: String {
        switch self {
        case .bank:          return "ngan-hang"
        case .eat:           return "an-uong"
        case .coffee:        return "ca-phe"
        case .move:          return "di-chuyen"
        case .rent:          return "nha-o"
        case .bill:          return "hoa-don"
        case .shopping:      return "mua-sam"
        case .health:        return "suc-khoe"
        case .study:         return "hoc-tap"
        case .entertainment: return "giai-tri"
        case .common:        return "ic_expense"
        case .invest:         return "tien-de-dau-tu"
        }
    }
    
    var color: String {
        switch self {
        case .bank:
            return "FF453A"
        case .eat:
            return "FF9F0A"
        case .coffee:
            return "C48A5C"
        case .move:
            return "0A84FF"
        case .rent:
            return "30D158"
        case .bill:
            return "FF375F"
        case .shopping:
            return "BF5AF2"
        case .health:
            return "FF453A"
        case .study:
            return "FFD60A"
        case .entertainment:
            return "64D2FF"
        case .common:
            return "FF453A"
        case .invest:
            return "AC8E68"
        }
    }
}

enum Income: String, CaseIterable, Codable {
    case salary, stock, extra

    var title: String {
        switch self {
        case .salary: return "Lương"
        case .stock:  return "Đầu tư"
        case .extra:  return "Thu nhập khác"
        }
    }

    var icon: String {
        switch self {
        case .salary: return "ic_income"
        case .stock:  return "dau-tu-chung-khoan"
        case .extra:  return "thu-nhap-khac"
        }
    }
    
    var color: String {
        switch self {
        case .salary:
            return "30D158"
        case .stock:
            return "5E5CE6"
        case .extra:
            return "66D4CF"
        }
    }
}
