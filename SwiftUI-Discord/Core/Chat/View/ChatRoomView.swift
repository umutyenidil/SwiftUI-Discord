//
//  ChatRoomView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct ChatRoomView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        Image(systemName: "number")
                            .imageScale(.large)
                            .padding()
                            .background {
                                Circle()
                                    .fill(Color(uiColor: .systemGray3))
                            }
                            .padding(.bottom, 24)
                        
                        Text("Welcome to General")
                            .font(.title2)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                    LazyVStack {
                        ForEach(MessageModel.mockData) { message in
                           MessageCardView(message: message)
                        }
                    }
                }
            }
            
            Divider()
                .overlay {
                    Color.black
                }
            
            MessageInputView()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ChatRoomView()
}
