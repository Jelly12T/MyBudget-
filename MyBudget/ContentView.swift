//
//  ContentView.swift
//  MyBudget
//
//  Created by kalapa on 10/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HomeTabBarView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppColors.backGroundColor)
    }
}


struct HomeTabBarView: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(HomeTabBar.allCases) { tab in
                TabBarViewItem(isSelected: tab == .overView,
                               tab: tab)
            }
        }
    }
}

struct TabBarViewItem: View {
    @State private var isSelected: Bool
    private var tab: HomeTabBar
    
    init(isSelected: Bool = false, tab: HomeTabBar) {
        self.isSelected = isSelected
        self.tab = tab
    }
    
    var body: some View {
        VStack(spacing: 4) {
            Image(self.tab.iconName)
            Text(self.tab.title)
                .font(.system(size: 10))
                .foregroundStyle(AppColors.labelPrimary)
        }
        .frame(maxWidth: .infinity)
    }
}

enum HomeTabBar: CaseIterable, Identifiable  {
    var id: Self {
        return self
    }
    
    case overView
    case noteBook
    case analyst
    case budget
    case setting
    
    // MARK: - Get
    var iconName: String {
        switch self {
        case .overView:
            return "ic_overview"
        case .noteBook:
            return "ic_notebook"
        case .analyst:
            return "ic_analyst"
        case .budget:
            return "ic_budget"
        case .setting:
            return "ic_setting"
        }
    }
    
    var title: String {
        switch self {
        case .overView:
            return "Tổng quan"
        case .noteBook:
            return "Sổ"
        case .analyst:
            return "Thống kê"
        case .budget:
            return "Ngân sách"
        case .setting:
            return "Cài đặt"
        }
    }
}
