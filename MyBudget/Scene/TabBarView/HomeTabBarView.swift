//
//  HomeTabBarView.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct HomeTabBarView: View {
    @Binding var tabSelected: HomeTabBar
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(HomeTabBar.allCases) { tab in
                TabBarViewItem(isSelected: tab == self.tabSelected,
                               tab: tab) {
                    self.tabSelected = tab
                    print("Jelly selected tab \(tab)")
                }
            }
        }
    }
}
