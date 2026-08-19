//
//  OverviewView.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct OverviewView: View {
    @ObservedObject private var viewModel = OverviewViewModel()
    
    var body: some View {
        ScrollView {
            OverviewHeaderView(greetingString: self.viewModel.greetingString,
                               mothString: self.viewModel.monthString)
            OverViewMoneyCard(total: 150_000_000,
                              spend: 45_000_000)
            HStack(spacing: 12) {
                MonthlySummaryCard(type: .income, amount: 100_000_000)
                MonthlySummaryCard(type: .expense, amount: 100_000_000)
            }
            
            WeeklySummaryCard()
            HomeMyWalletView()
            RecentSpendingView()
        }
        .background(AppColors.backGroundColor)
        .onAppear {
            self.viewModel.onAppear()
        }
    }
}

