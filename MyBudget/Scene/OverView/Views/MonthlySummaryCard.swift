//
//  MonthlySummaryCard.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

enum MonthlySummaryType {
    case income
    case expense
    
    var icon: String {
        switch self {
        case .income:
            return "ic_income"
        case .expense:
            return "ic_expense"
        }
    }
    
    var title: String {
        switch self {
        case .income:
            return "Thu tháng này"
        case .expense:
            return "Chi tháng này"
        }
    }
}

struct MonthlySummaryCard: View {
    let type: MonthlySummaryType
    let amount: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 2) {
                Image(type.icon)
                Text(type.title)
                    .font(.system(size: 14))
                    .foregroundStyle(.white.opacity(0.5))
                Spacer()
            }
            
            CurrencyText(amount: amount, amountColor: .white, type: .normal)
        }
        .padding(16)
        .background(AppColors.cardColor)
        .clipShape(.rect(cornerRadius: 16))
    }
}

#Preview {
    MonthlySummaryCard(type: .income, amount: 100_000_000)
}
