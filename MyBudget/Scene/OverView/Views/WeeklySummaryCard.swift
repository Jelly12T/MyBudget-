//
//  WeeklySummaryCard.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct WeeklySummaryCard: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("7 Ngày qua")
                    .foregroundStyle(.white)
                    .font(.system(size: 18, weight: .bold))
                
                Spacer()
                Text("TB 1.050.500 Đ / ngày")
                    .font(.system(size: 14))
                    .foregroundStyle(.white.opacity(0.5))
            }
            
            WeeklySummaryChart()
        }
        .frame(height: 150)
        .padding()
        .background(AppColors.cardColor)
        .clipShape(.rect(cornerRadius: 24))
    }
}

#Preview {
    WeeklySummaryCard()
}
