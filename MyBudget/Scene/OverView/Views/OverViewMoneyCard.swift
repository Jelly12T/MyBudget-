//
//  OverViewMoneyCard.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct OverViewMoneyCard: View {
    let total: Int
    let spend: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Image(systemName: "clock")
                        .font(.system(size: 16))
                        .foregroundStyle(Color.green)
                Text("Hôm nay còn được chi")
                    .font(.system(size: 12))
                    .foregroundStyle(Color(white: 0.75))
            }
            
            CurrencyText(amount: 150_000_000,
                         amountColor: .white,
                         type: .large)
            
            HStack(spacing: 2) {
                Text("Còn 3 ngày ngân sách còn ")
                    .font(.system(size: 12))
                    .foregroundStyle(.white)

                CurrencyText(amount: self.spend,
                             amountColor: .white,
                             type: .small)
            }
            
            VStack {
                OverViewMoneyCardProgressView(progress: Double(spend) / Double(max(1, total)))
                HStack(alignment: .top) {
                    Text("Đã chi")
                        .foregroundStyle(.white.opacity(0.5))
                        .font(.system(size: 12))
                    CurrencyText(amount: self.spend,
                                 amountColor: .white,
                                 type: .small)

                    Spacer()
                    Text("Còn lại")
                        .foregroundStyle(.white.opacity(0.5))
                        .font(.system(size: 12))
                    CurrencyText(amount: self.total - self.spend,
                                 amountColor: AppColors.primaryColor,
                                 type: .small)
                }
            }
            
        }
        .padding()
        .background(AppColors.cardColor)
        .clipShape(.rect(cornerRadius: 32))
    }
}

struct OverViewMoneyCardProgressView: View {
    let progress: Double
    
    var body: some View {
        Capsule()
            .fill(Color(white: 0.28))
            .overlay {
                GeometryReader { geo in
                    Capsule()
                        .fill(LinearGradient(colors: [.green, .yellow],
                                             startPoint: .leading, endPoint: .trailing))
                        .frame(width: geo.size.width * min(max(progress, 0), 1))
                }
            }
            .frame(height: 8)
    }
}

#Preview {
    OverViewMoneyCard(total: 150_000_000, spend: 50_000_000)
}
