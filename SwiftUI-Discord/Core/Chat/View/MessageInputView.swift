//
//  MessageInputView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct MessageInputView: View {
    @State private var message: String = ""
    var body: some View {
        HStack {
            TextField("Message #general", text: $message)
                .padding()
                .background {
                    Capsule()
                        .fill(Color(uiColor: .systemGray6))
                }
            
            Button {
                
            } label: {
                Image(systemName: "arrow.up.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .foregroundStyle(Color(uiColor: .systemGray6))
                    .background() {
                        Circle()
                            .fill(.gray)
                    }
            }
        }
        .padding(.all, 8)
    }
}

#Preview {
    MessageInputView()
}
