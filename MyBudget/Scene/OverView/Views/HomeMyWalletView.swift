//
//  HomeMyWalletView.swift
//  MyBudget
//
//  Created by kalapa on 18/8/26.
//

import SwiftUI

struct HomeMyWalletView: View {
    private let listItem: [MyHomeWalletModel] = [
        .init(iconString: "tien-mat", iconColor: "413c25", title: "Tiền mặt", total: 100_000_000),
        .init(iconString: "ngan-hang", iconColor: "3f242a", title: "Ngân hàng", total: 100_000_000),
        .init(iconString: "vi-dien-tu", iconColor: "352740", title: "Ví điện tử", total: 100_000_000),
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("Ví của tôi")
                    .foregroundStyle(.white)
                    .font(.system(size: 18, weight: .bold))
                Spacer()
                Text("100.000.D")
                    .foregroundStyle(.white.opacity(0.5))
                    .font(.system(size: 12, weight: .bold))
            }
            .padding()
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(listItem, id: \.self.title) { item in
                        HomeMyWalletItemView(model: item)
                    }
                }
            }
            
        }
        .background(AppColors.backGroundColor)
    }
}

struct HomeMyWalletItemView: View {
    let model: MyHomeWalletModel
    
    init(model: MyHomeWalletModel) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(self.model.iconString)
                .padding(6)
                .background(Color(self.model.iconColor))
                .containerShape(RoundedRectangle(cornerRadius: 12))
            
            Text(self.model.title)
                .foregroundStyle(.white.opacity(0.5))
                .font(.system(size: 12, weight: .bold))
            CurrencyText(amount: self.model.total,
                         amountColor: .white, type: .normal)
            
        }
        .frame(height: 90)
        .padding()
        .background(AppColors.cardColor)
        .containerShape(RoundedRectangle(cornerRadius: 16))

    }
}

#Preview {
    HomeMyWalletView()
}
