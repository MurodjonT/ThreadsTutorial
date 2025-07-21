//
//  MainButton.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 16/07/25.
//
import SwiftUI

struct MainButton: View {
    let title: String
    let backgroundColor: Color
    let foregroundStyle: Color
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let action: () -> Void
    
    // Default initializer with common values
    init(title: String,
         backgroundColor: Color = .black,
         foregroundStyle: Color = .white,
         width: CGFloat = 375,
         height: CGFloat = 50,
         cornerRadius: CGFloat = 12,
         action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundStyle = foregroundStyle
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(foregroundStyle)
                .frame(width: width, height: height)
                .background(backgroundColor)
                .clipShape(.rect(cornerRadius: cornerRadius))
        }
    }
}


