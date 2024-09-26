//
//  MessageCardView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI
import Kingfisher

struct MessageCardView: View {
    let message: MessageModel
    
    var body: some View {
        HStack(alignment: .top) {
            KFImage(URL(string: message.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                HStack {
                    Text(message.username)
                        .bold()
                    
                    Text(message.createdAt.formatted())
                        .font(.caption)
                }
                
                Text(message.content)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.horizontal)
        .padding(.bottom, 8)
    }
}

#Preview {
    MessageCardView(message: MessageModel.mockData[0])
}
