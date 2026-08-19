//
//  TransactionNoteBookView.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI
import Combine

struct TransactionNoteBookView: View {
    @StateObject private var viewModel = TransactionNoteBookViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sổ giao dịch")
                .font(.system(size: 32, weight: .bold))
                .foregroundStyle(.white)
            SearchView(text: $viewModel.query)
            Spacer()
        }
        .background(AppColors.backGroundColor)
    }
}

#Preview {
    TransactionNoteBookView()
}
