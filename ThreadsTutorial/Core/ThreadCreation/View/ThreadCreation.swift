//
//  ThreadCreation.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 20/07/25.
//

import SwiftUI

struct ThreadCreation: View {
    @State private var threadText: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Murodjon Turobov")
                        
                        TextField("Start a thread", text: $threadText, axis: .vertical)
                        
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !threadText.isEmpty {
                        Button {
                            threadText = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {
                    }
                    .opacity(threadText.isEmpty ? 0.5 : 1.0)
                    .disabled(threadText.isEmpty)
                }
            }
            .font(.headline)
            .foregroundStyle(.primary)
        }
    }
}
#Preview {
    ThreadCreation()
}
