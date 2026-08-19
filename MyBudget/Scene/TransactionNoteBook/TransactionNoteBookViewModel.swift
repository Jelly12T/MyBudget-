//
//  TransactionNoteBookViewModel.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import Combine
import SwiftUI

@MainActor
class TransactionNoteBookViewModel: ObservableObject {
    @Published var query = ""
}
