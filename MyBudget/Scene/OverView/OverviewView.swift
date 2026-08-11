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
        VStack {
            OverviewHeaderView(greetingString: self.viewModel.greetingString,
                               mothString: self.viewModel.monthString)
            OverViewMoneyCard(total: 150_000_000,
                              spend: 45_000_000)
        }
        .background(AppColors.backGroundColor)
        .onAppear {
            self.viewModel.onAppear()
        }
    }
}

#Preview {
    OverviewView()
}
