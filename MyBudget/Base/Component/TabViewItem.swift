//
//  TabViewItem.swift
//  MyBudget
//
//  Created by kalapa on 19/8/26.
//

import SwiftUI

struct TabViewItem: View {
    private var title: String
    
    @State var isSelected: Bool = .init(true)
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        VStack {
            Text(self.title)
                .font(.system(size: 12, weight: .semibold))
                .foregroundStyle(isSelected == true ? .black : .gray.opacity(0.4))
        }
        .padding()
        .background(.white.opacity(0.5))
    }
}

#Preview {
    TabViewItem(title: "Tất cả")
}
