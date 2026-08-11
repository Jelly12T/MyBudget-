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
        HStack {
            OverviewHeaderView(greetingString: self.viewModel.greetingString,
                               mothString: self.viewModel.monthString)
        }
        .onAppear {
            self.viewModel.onAppear()
        }
    }
}
