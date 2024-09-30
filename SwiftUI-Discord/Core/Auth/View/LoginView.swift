//
//  SignInView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Welcome back!")
                .font(.title.bold())
            
            Text("We're so excited to see you again!")
                .foregroundStyle(.gray)
                .padding(.bottom)
            
            
            DiscordForm(title: "Account Information") {
                DiscordTextFormField(placeholder: "Email Address", text: $viewModel.loginEmail)
                DiscordTextFormField(placeholder: "Password", text: $viewModel.loginPassword)
            }
            
            Button {
                viewModel.login()
            } label: {
                Text("Log In")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color(.discord))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .preferredColorScheme(.dark)
        .background(Color(.background))
    }
}

#Preview {
    LoginView()
}
