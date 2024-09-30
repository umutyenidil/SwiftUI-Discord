//
//  NameView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//


import SwiftUI

struct NameView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("What's your name?")
                .font(.title)
                .bold()
                .padding(.bottom, 24)
            
            DiscordForm(title: "Display name") {
                DiscordTextFormField(placeholder: "", text: $viewModel.registerDisplayName)
            }
            
            NavigationLink {
                UsernameView()
                    .environmentObject(viewModel)
            } label: {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerDisplayName.isEmpty ? .gray : .discord)
            }
            .disabled(viewModel.registerDisplayName.isEmpty)
            .animation(.default, value: viewModel.registerDisplayName)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.background))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    NavigationStack {
        NameView()
    }
}
