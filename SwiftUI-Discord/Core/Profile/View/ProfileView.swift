//
//  ProfileView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    Color.yellow
                        .frame(height: 200)
                    
                    ZStack(alignment: .topLeading) {
                        Color.black
                            .frame(height: 140)
                        
                        VStack(alignment: .leading) {
                            KFImage(URL(string: "https://picsum.photos/512"))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .background {
                                    Circle()
                                        .fill(.black)
                                        .padding(-8)
                                }
                            
                            Text("Umut Yenidil")
                                .font(.title2)
                                .bold()
                            
                            Text("h0pey")
                                .font(.callout)
                        }
                        .padding(.leading)
                        .offset(y: -50)
                    }
                    
                    ProfileNavigationLink(title: "Account", icon: "person.crop.square.fill")
                    
                    Divider()
                    
                    ProfileNavigationLink(title: "Profile", icon: "pencil")
                    
                    Divider()
                    
                    Button("Logout") {
                        authViewModel.logout()
                    }
                    .foregroundStyle(.red)
                    .padding()
                }
            }
            .background(Color(.background))
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProfileView()
}
