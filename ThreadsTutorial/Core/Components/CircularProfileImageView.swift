//
//  CircularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 21/07/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image(.mishary)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
