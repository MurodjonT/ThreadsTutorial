//
//  EditProfileView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 26/07/25.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .font(.system(size: 16, weight: .semibold))
                                
                            Text("Murodjon Turobov")
                                .font(.system(size: 16, weight: .regular))
                                
                        }
                        .font(.footnote)
                        
                        Spacer()
                        CircularProfileImageView()
                            
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .font(.system(size: 16, weight: .semibold))
                        TextField("Enter your bio", text: $bio, axis: .vertical)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Link")
                            .font(.system(size: 16, weight: .semibold))
                        TextField("Add link ...", text: $link, axis: .vertical)
                    }
                    Divider()
                    
                    Toggle("Private Profile", isOn: $isPrivateProfile)
                        .font(.system(size: 16, weight: .semibold))

                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .overlay {
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding(.horizontal, 16)
                    
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.primary)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Edit") {
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.primary)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
