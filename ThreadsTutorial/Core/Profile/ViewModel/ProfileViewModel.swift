//
//  ProfileViewModel.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 04/08/25.
//
import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscriptions()
    }
    
    private func setupSubscriptions() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("Current user: \(user)")
        }.store(in: &cancellables)
    }
}
