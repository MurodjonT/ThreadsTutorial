//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 16/07/25.
//


import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()

    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            VStack {
                Spacer()
                
                Image(.threads)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
                
                VStack {
                    MainTextField(placeholder: "Enter your email", text: $viewModel.email)
                    MainTextField(placeholder: "Enter your password", text: $viewModel.password, isSecure: true)
                    MainTextField(placeholder: "Enter your full name", text: $viewModel.fullName)
                    MainTextField(placeholder: "Enter your username", text: $viewModel.username)
   
                    }
                
                MainButton(title: "Sign Up", backgroundColor: .black, foregroundStyle: .white) {
                    Task {
                        try await viewModel.createUser()
                    }
                    
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 6) {
                        Text("Already have an account?")
                            
                        Text("Sign in")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
#Preview {
    RegistrationView()
}

