//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Murodjon Turobov on 16/07/25.
//


import SwiftUI

struct RegistrationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var username: String = ""
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
                    MainTextField(placeholder: "Enter your email", text: $email)
                    MainTextField(placeholder: "Enter your password", text: $password, isSecure: true)
                    MainTextField(placeholder: "Enter your full name", text: $fullName)
                    MainTextField(placeholder: "Enter your username", text: $username)
   
                    }
                
                MainButton(title: "Sign Up", backgroundColor: .black, foregroundStyle: .white) {
                    
                    
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

