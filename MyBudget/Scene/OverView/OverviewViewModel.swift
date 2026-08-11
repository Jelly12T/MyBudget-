//
//  OverviewViewModel.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI
import Combine


@MainActor
final class OverviewViewModel: ObservableObject {
    
    // MARK: - Proteties
    @Published private(set) var greetingString = ""
    @Published private(set) var monthString = ""
    
    private let getOverviewUseCase: GetGreetingUseCase = DefaultGetGreetingUseCase()
    private let dateUseCase: DateUseCase = DefaultDateUseCase()
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Input
    func onAppear() {
        greetingString = self.getOverviewUseCase.getGettingUser("Thạch")
        monthString = "Tháng \(self.dateUseCase.getMoth())"
    }
    // MARK: - Implement
    
}
