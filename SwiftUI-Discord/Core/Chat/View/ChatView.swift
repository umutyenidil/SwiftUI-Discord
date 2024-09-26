//
//  ChatView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct ChatView: View {
    @State private var message: String = ""
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button {
                    withAnimation {
                        showSideMenu.toggle()
                    }
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(.white)
                }
                
                Image(systemName: "number")
                
                Text("General")
                    .bold()
                    .font(.callout)
                
                Spacer()
                
                Image(systemName: "person.2.fill")
            }
            .padding()
            .padding(.top, 36)
            .background {
                Color(uiColor: .systemGray6)
            }
            
            ChatRoomView()
                .padding(.bottom)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .background {
            Color(.background)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ChatView(showSideMenu: .constant(false))
}
