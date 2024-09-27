//
//  DiscordForm.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct DiscordForm<Content: View>: View {
    let title: String
    @ViewBuilder let children: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.footnote)
                .textCase(.uppercase)
            
                children()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    DiscordForm(title: "Test Title") {
        Text("Custom Content")
    }
}
