//
//  ContentView.swift
//  MyBudget
//
//  Created by kalapa on 10/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: HomeTabBar = .overView
    @State private var isKeyboardVisible = false

    var body: some View {
        VStack(spacing: 0) {
            selectedTab.contentView
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            if !isKeyboardVisible {
                HomeTabBarView(tabSelected: $selectedTab)
                    .transition(.move(edge: .bottom))
            }
        }
        .animation(.snappy(duration: 0.25), value: isKeyboardVisible)
        .background(AppColors.backGroundColor)
        .onReceive(
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
        ) { _ in isKeyboardVisible = true }
        .onReceive(
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
        ) { _ in isKeyboardVisible = false }
    }
}
