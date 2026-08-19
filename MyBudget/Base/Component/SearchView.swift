//
//  SearchView.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI

struct SearchView: View {
    @FocusState var isFocused
    @Binding var text: String
    
    var placeholder: String = "Tìm giao dịch, số tiền ..."
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            
            TextField(
                "",
                text: $text,
                prompt: Text(placeholder)
                    .foregroundColor(.white)
                )
                .focused($isFocused)
                .font(.system(size: 15))
                .foregroundStyle(.white)
                .textInputAutocapitalization(.never)
                .submitLabel(.search)
                .tint(AppColors.primaryColor)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color("1c1c1e"))
        }
    }
}

#Preview {
    SearchView(text: .constant(""))
}
