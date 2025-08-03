//
//  ProfileView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 20/07/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    @State var selectedFilter: ProfileThreadFilter = .threads
    @Namespace private var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        //Full name nad username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Charles Leclerc")
                                .font(.system(size: 20, weight: .semibold))
                            Text("@charles_leclerc")
                                .font(.system(size: 13, weight: .regular))
                                .foregroundStyle(.secondary)
                            
                        }
                        Text("Formula 1 Driver for Scuderia Ferrari")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundStyle(.primary)
                        Text("2 followers")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                        
                }
                
                MainButton(title: "Follow", width: 370, height: 32, cornerRadius: 10) {}
                
                
                //User content list view
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.system(size: 14, weight: .semibold))
                                
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: filterBarWidth, height: 2)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                    
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: filterBarWidth, height: 2)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                                    
                            }
                        }
                    }
                    LazyVStack {
                        ForEach(0..<10) { _ in
                            ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            
                            
                    }
                }
                

            }
            .padding(.horizontal, 24)
        }
    }
}
#Preview {
    ProfileView()
}
