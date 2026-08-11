//
//  TabBarViewItem.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

struct TabBarViewItem: View {
    private var isSelected: Bool
    private var tab: HomeTabBar
    
    // MARK: - Closure
    private var onTap: (() -> Void)?
    
    init(isSelected: Bool = false, tab: HomeTabBar, onTap: (() -> Void)? = nil) {
        self.isSelected = isSelected
        self.tab = tab
        self.onTap = onTap
    }
    
    var body: some View {
        VStack(spacing: 4) {
            Image("\(self.tab.iconName)\(self.isSelected ? "_selected" : "")")
            Text(self.tab.title)
                .font(.system(size: 12, weight: .semibold))
        }
        .foregroundStyle(self.isSelected ? AppColors.primaryColor : AppColors.labelPrimary)
        .frame(maxWidth: .infinity)
        .contentShape(.rect)
        .onTapGesture(perform: self.onTap ?? {})
    }
}
