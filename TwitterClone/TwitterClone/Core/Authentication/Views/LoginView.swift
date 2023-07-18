//
//  LoginView.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/18/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        // parent container
        VStack {
            // header view
            AuthHeaderView(title1: "Hello.", title2: "Welcome back")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                
                CustomInputField(imageName: "lock", placeHolderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("Reset Password View..")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }
                
            }
            
            Button {
                print("Sign in here...")
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink {
                registrationView()
                    .toolbar(.hidden, for: .navigationBar)
            } label: {
                HStack {
                    Text("Dont have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
