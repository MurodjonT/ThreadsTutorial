//
//  SwiftUIView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 21/07/25.
//


import SwiftUI

struct CustomOutlineButton: View {
    var title: String
    var width: CGFloat = 100
    var height: CGFloat = 32
    var cornerRadius: CGFloat = 10
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: width, height: height)
                .foregroundColor(.primary)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )
        }
    }
}

//#Preview {
//    CustomOutlineButton()
//}
