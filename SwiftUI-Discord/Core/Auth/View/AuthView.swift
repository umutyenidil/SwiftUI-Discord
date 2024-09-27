//
//  AuthView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import SwiftUI

struct AuthView: View {
    @State var viewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 16) {
                    Image("Discord")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .frame(height: 64)
                    
                    Text("Discord")
                        .font(.largeTitle)
                        .bold()
                }
                .foregroundStyle(Color(.discord))
                .padding()
                
                Spacer()
                
                Text("Welcome to Discord!")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 28)
                
                Text("Join over 100 million people who use Discord to talk with communities and friends.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                NavigationLink {
                    EmailView()
                        .environment(viewModel)
                } label: {
                        Text("Register")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.discord))
                }
                
                NavigationLink {
                    LoginView()
                        .environment(viewModel)
                } label: {
                        Text("Login")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.white)
                        .background(.gray)
                }
                
            }
            .padding(.bottom)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
            .background(Color(.background))
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AuthView()
}
