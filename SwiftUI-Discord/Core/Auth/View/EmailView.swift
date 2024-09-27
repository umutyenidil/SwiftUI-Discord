//
//  EmailView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct EmailView: View {
    @Environment(\.authViewModel) var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
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
                    .environment(viewModel)
            } label: {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(viewModel.registerEmail.isEmpty ? .gray : .discord)
            }
            .disabled(viewModel.registerEmail.isEmpty)
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
