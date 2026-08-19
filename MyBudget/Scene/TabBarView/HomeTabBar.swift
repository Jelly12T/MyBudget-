//
//  HomeTabBar.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI

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
    
    @ViewBuilder
    var contentView: some View {
        switch self {
        case .overView:
            OverviewView()
        case .noteBook:
            TransactionNoteBookView()
        case .analyst:
            OverviewView()
        case .budget:
            OverviewView()
        case .setting:
            OverviewView()
        }
    }
}
