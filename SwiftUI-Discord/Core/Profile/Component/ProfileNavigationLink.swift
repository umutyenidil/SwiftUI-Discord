//
//  ProfileNavigationLink.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import SwiftUI

struct ProfileNavigationLink: View {
    let title: String
    let icon: String
    var body: some View {
        NavigationLink {
            
        } label: {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(.gray)
                
                Text(title)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            .padding()
        }
        .background(Color(uiColor: .systemGray4))
    }
}

#Preview {
    ProfileNavigationLink(title: "Account", icon: "person.crop.square.fill")
}
