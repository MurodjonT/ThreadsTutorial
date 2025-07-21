//
//  ThreadCell.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 20/07/25.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                
                Image(.mishary)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Mishary Rashid")
                            .font(.footnote)
                        
                        Spacer()
                        Text("10 min")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Button {
                            // Action for the button
                        } label: {
                            Image(systemName: "ellipsis")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                            
                        
                        
                    }
                    Text("Reciter of the Quran")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Button {
                            // Action for like
                        } label: {
                            Image(systemName: "heart")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                        Button {
                            // Action for like
                        } label: {
                            Image(systemName: "bubble.right")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                        Button {
                            // Action for like
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                        Button {
                            // Action for like
                        } label: {
                            Image(systemName: "paperplane")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
