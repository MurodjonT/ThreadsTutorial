//
//  User.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 03/08/25.
//
import Foundation

struct User: Codable, Identifiable {
    let id: String
    let username: String
    let fullName: String
    let email: String
    let profileImageUrl: String?
    let bio: String?

    init(id: String, username: String, fullName: String, email: String, profileImageUrl: String? = nil, bio: String? = nil) {
        self.id = id
        self.username = username
        self.fullName = fullName
        self.email = email
        self.profileImageUrl = profileImageUrl
        self.bio = bio
    }
}

