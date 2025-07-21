//
//  FeedView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 20/07/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { index in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("Refreshing feed...")
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
