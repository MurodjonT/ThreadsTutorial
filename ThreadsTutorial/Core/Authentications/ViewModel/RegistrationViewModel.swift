//
//  RegistrationViewModel.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 31/07/25.
//
import Foundation


class RegistrationViewModel: ObservableObject {
    @Published  var email: String = ""
    @Published  var password: String = ""
    @Published  var fullName: String = ""
    @Published  var username: String = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email,
                                                password: password,
                                                username: username,
                                                fullName: fullName
        )
            
        
    }
}
