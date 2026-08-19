//
//  RecentSpendingCell.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI

struct RecentSpendingCell: View {
    private let model: RecentSpendingItemModel
    
    init(model: RecentSpendingItemModel) {
        self.model = model
    }
    
    var body: some View {
        HStack {
            Image(self.model.type.icon)
                .padding(4)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(self.model.type.color.opacity(0.4))
                }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(self.model.type.title)
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .bold))
                Text(self.model.description)
                    .foregroundStyle(.white.opacity(0.5))
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            HStack(spacing: 0) {
                Text(self.model.type.isIncome ? "+" : "-")
                    .foregroundStyle(self.model.type.isIncomeColor)
                    .font(.system(size: 14, weight: .bold))

                CurrencyText(
                    amount: self.model.total,
                    amountColor: self.model.type.isIncomeColor,
                    type: .normal
                )
            }
            
        }
        .padding()
        .background(.clear)
    }
}

#Preview {
    RecentSpendingCell(model: .init(type: .spending(.bank),
                              description: "Gửi tiền gân hàng",
                              total: 10_000_000))
}
