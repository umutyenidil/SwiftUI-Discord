//
//  DiscordSecureFormField.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct DiscordSecureFormField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        SecureField(placeholder, text: $text)
            .padding()
            .background(.ultraThinMaterial)
    }
}

#Preview {
    DiscordSecureFormField(placeholder: "Placeholder", text: .constant(""))
}
