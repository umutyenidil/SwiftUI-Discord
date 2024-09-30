//
//  EmailView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct EmailView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Enter email")
                .font(.title)
                .bold()
                .padding(.bottom, 24)
            
            DiscordForm(title: "Email") {
                DiscordTextFormField(placeholder: "Email", text: $viewModel.registerEmail)
            }
            
            NavigationLink {
                NameView()
                    .environmentObject(viewModel)
            } label: {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerEmail.isEmpty ? .gray : .discord)
            }
            .disabled(viewModel.registerEmail.isEmpty)
            .animation(.default, value: viewModel.registerEmail)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.background))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    NavigationStack {
        EmailView()
    }
}
