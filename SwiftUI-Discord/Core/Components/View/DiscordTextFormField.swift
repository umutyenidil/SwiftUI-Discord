//
//  DiscordTextField.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import SwiftUI

struct DiscordTextFormField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(.ultraThinMaterial)
            .textInputAutocapitalization(.never)
    }
}

#Preview {
    DiscordTextFormField(placeholder: "Placeholder", text: .constant(""))
}
