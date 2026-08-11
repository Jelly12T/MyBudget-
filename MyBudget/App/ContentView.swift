//
//  ContentView.swift
//  MyBudget
//
//  Created by kalapa on 10/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: HomeTabBar = .overView
    
    var body: some View {
        VStack {
            selectedTab.contentView
            Spacer()
            HomeTabBarView(tabSelected: $selectedTab)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppColors.backGroundColor)
    }
}

