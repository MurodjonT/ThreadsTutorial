//
//  ExploreUserCell.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 21/07/25.
//

import SwiftUI

struct ExploreUserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Mishary Rashid")
                    .font(.headline)
                    .foregroundStyle(.primary)
                    .fontWeight(.semibold)
                Text("Reciter of the Quran")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
        
        Divider()
            .padding(.leading, 24)
    }
}

#Preview {
    ExploreUserCell()
}
