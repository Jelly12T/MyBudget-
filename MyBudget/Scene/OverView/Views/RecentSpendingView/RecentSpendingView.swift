//
//  RecentSpendingView.swift
//  MyBudget
//
//  Created by kalapa on 18/8/26.
//

import SwiftUI

struct RecentSpendingView: View {
    private let listItem: [RecentSpendingItemModel] = [
        .init(type: .spending(.bank),
              description: "Gửi tiền gân hàng",
              total: 10_000_000),
        .init(type: .spending(.coffee),
              description: "Highland nè",
              total: 50_000),
        .init(type: .income(.salary),
              description: "Lương hàng tháng",
              total: 28_000_000),
        .init(type: .spending(.eat),
              description: "Đi ăn cơm thôi",
              total: 60_000),
        .init(type: .spending(.entertainment),
              description: "Youtube premium",
              total: 250_000),
        .init(type: .spending(.rent),
              description: "Tiền nhà",
              total: 5_000_000),
        .init(type: .income(.extra),
              description: "Lương dạy thêm",
              total: 2_300_000),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Gần đây")
                    .foregroundStyle(.white)
                    .font(.system(size: 18, weight: .bold))
                Spacer()
                Button {
                     //TODO: need add action
                } label: {
                    Text("Tất cả")
                }
            }
            .padding()
            
            VStack(spacing: 0) {
                ForEach(listItem) { item in
                    RecentSpendingCell(model: item)
                }
            }
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .fill(AppColors.cardColor)
            }


        }
        .background(AppColors.backGroundColor)
    }
}

#Preview {
    RecentSpendingView()
}
