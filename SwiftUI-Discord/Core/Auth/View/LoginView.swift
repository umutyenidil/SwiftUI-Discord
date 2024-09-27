//
//  SignInView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.authViewModel) var authViewModel
    
    var body: some View {
        @Bindable var authViewModel = authViewModel
        VStack {
            Text("Welcome back!")
                .font(.title.bold())
            
            Text("We're so excited to see you again!")
                .foregroundStyle(.gray)
                .padding(.bottom)
            
            
            DiscordForm(title: "Account Information") {
                DiscordTextFormField(placeholder: "Email Address", text: $authViewModel.loginEmail)
                DiscordTextFormField(placeholder: "Password", text: $authViewModel.loginEmail)
            }
            
            Button {
                authViewModel.login()
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
