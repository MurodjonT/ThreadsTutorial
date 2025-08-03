//
//  AuthService.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 31/07/25.
//

import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("Login successful: \(result.user.uid)")
        } catch {
            print("Error login: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, username: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, username: username, fullName: fullName, id: result.user.uid)
            print("User created successfully: \(result.user.uid)")
        } catch {
            print("Error creating user: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    @MainActor
    private func uploadUserData(withEmail email: String,
                        username: String,
                        fullName: String,
                        id: String
    ) async throws {
        let user = User(id: id, username: username, fullName: fullName, email: email)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
            
            
    }
        
}
