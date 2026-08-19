//
//  OverviewHeaderView.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct OverviewHeaderView: View {
    
    // MARK: - Proteties
    private var greetingString: String
    private var mothString: String
    
    // MARK: -  Init
    init(greetingString: String, mothString: String) {
        self.greetingString = greetingString
        self.mothString = mothString
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text(self.greetingString)
                    .font(.system(size: 12.5, weight: .semibold))
                    .foregroundStyle(Color("8d8d93"))
                
                Text(self.mothString)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.white)
            }
            .padding()
            
            Spacer()
            
            HStack(spacing: 8) {
                Button {
                    print("Jelly notification")
                } label: {
                    Image("ic_notification")
                        .renderingMode(.template)
                        .foregroundStyle(.white)
                        .frame(width: 24, height: 24)
                        .padding(10)
                        .background(Color.white.opacity(0.1), in: Circle())
                }
                
                Button {
                    print("Jelly notification")
                } label: {
                    Text("J")
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.white)
                        .padding(10)
                        .background(AppColors.secondButton, in: Circle())
                    
                }
            }
            .padding()
        }
        .background(AppColors.backGroundColor)
    }
}

#Preview {
    OverviewHeaderView(greetingString: "Chào buổi sáng Thạch", mothString: "Tháng 5")
}
