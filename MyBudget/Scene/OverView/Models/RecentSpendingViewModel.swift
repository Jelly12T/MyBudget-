//
//  RecentSpendingItemModel.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI

struct RecentSpendingItemModel: Identifiable {
    let id = UUID()
    
    let type: TransactionCategory
    let description: String
    let total: Int
}
