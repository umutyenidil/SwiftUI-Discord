//
//  UsernameView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct UsernameView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Next, create an account")
                .font(.title)
                .bold()
                .padding(.bottom, 24)
            
            DiscordForm(title: "Account") {
                DiscordTextFormField(placeholder: "Username", text: $viewModel.registerUsername)
                
                DiscordSecureFormField(placeholder: "Password", text: $viewModel.registerPassword)
            }
            
            NavigationLink {
                AgeView()
                    .environmentObject(viewModel)
            } label: {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerUsername.isEmpty || viewModel.registerPassword.isEmpty ? .gray : .discord)
            }
            .disabled(viewModel.registerUsername.isEmpty || viewModel.registerPassword.isEmpty)
            .animation(.default, value: viewModel.registerUsername.isEmpty || viewModel.registerPassword.isEmpty)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.background))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    NavigationStack {
        UsernameView()
    }
}
