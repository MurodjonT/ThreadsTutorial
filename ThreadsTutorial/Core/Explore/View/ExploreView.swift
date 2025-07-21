//
//  ExploreView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 20/07/25.
//

import SwiftUI

struct ExploreView: View {
    
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20, id: \.self) { index in
                        VStack(spacing: 8) {
                            ExploreUserCell()
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}
#Preview {
    ExploreView()
}
