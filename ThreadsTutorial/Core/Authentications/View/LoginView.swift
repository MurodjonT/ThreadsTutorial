//
//  LoginView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 16/07/25.
//


import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
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
                        
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundStyle(.black)
                }
                
                MainButton(title: "Log In", backgroundColor: .black, foregroundStyle: .white)  {
                    Task {
                        try await viewModel.login()
                    }
                    
                }

                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 6) {
                        Text("Don't have an account?")
                            
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)

            }
            .padding(.horizontal, 8)
        }
    }
}
#Preview {
    LoginView()
}

