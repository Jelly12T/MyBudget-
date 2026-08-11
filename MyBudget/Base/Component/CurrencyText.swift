//
//  CurrencyText.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

enum CurrencyTextStyle {
    case large
    case normal
    case small
    
    var sizeAmount: CGFloat {
        switch self {
        case .large:
            return 24
        case .normal:
            return 16
        case .small:
            return 12
        }
    }
    
    var sizeCurrency: CGFloat {
        switch self {
        case .large:
            return 16
        case .normal:
            return 12
        case .small:
            return 12
        }
    }
}

struct CurrencyText: View {
    let amount: Int
    let amountColor: Color
    let type: CurrencyTextStyle
    
    private let currency: String = "₫"
    
    
    var body: some View {
        HStack(spacing: 2) {
            Text(self.amount.currency)
                .font(.system(size: self.type.sizeAmount, weight: .bold))
                .foregroundStyle(self.amountColor)
            
            HStack(spacing: 2) {
                Text(currency)
                    .font(.system(size: self.type.sizeCurrency,
                                  weight: .bold))
                    .foregroundStyle(Color(self.amountColor))
            }
        }
    }
}
