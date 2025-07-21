//
//  MainTextField.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 16/07/25.
//

import SwiftUI

struct MainTextField: View {
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var horizontalPadding: CGFloat = 16

    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, horizontalPadding)
    }
}
