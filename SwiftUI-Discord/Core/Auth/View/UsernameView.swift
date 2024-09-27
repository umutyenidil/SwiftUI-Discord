//
//  UsernameView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct UsernameView: View {
    @Environment(\.authViewModel) var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        VStack {
            Text("Next, create an account")
                .font(.title)
                .bold()
                .padding(.bottom, 24)
            
            DiscordForm(title: "Account") {
                DiscordTextFormField(placeholder: "Username", text: $viewModel.registerUsername)
                
                DiscordSecureFormField(placeholder: "Parola", text: $viewModel.registerPassword)
            }
            
            NavigationLink {
                AgeView()
                    .environment(viewModel)
            } label: {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerEmail.isEmpty || viewModel.registerPassword.isEmpty ? .gray : .discord)
            }
            .disabled(viewModel.registerEmail.isEmpty || viewModel.registerPassword.isEmpty)
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
