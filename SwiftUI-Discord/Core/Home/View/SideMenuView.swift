//
//  SideMenuView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct SideMenuView: View {
    @State var selectedChannel: ChannelModel?
    @State var showChannels = true
    @State var channelsHeight: CGFloat = 0
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(spacing: 0) {
                ScrollView {
                    VStack {
                        ForEach(ServerModel.mockData) { server in
                            Text(server.name.prefix(1))
                                .font(.largeTitle)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .padding(.vertical, 8)
                                .background {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(.discord))
                                }
                        }
                    }
                }
                .frame(width: 60)
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 8)
                .background(.ultraThickMaterial)
                
                Divider()
                    .frame(width: 60)
                    .padding(.bottom, 8)
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundColor(.green)
                        .background {
                            Circle()
                                .fill(.ultraThinMaterial)
                                .padding(-16)
                        }
                        .padding(.vertical)
                }
            }
            .background(.ultraThickMaterial)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("IOS Devs")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .fontWeight(.heavy)
                    
                }
                .padding(.bottom, 24)
                
                Button {
                    withAnimation {
                        showChannels.toggle()
                    }
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.down")
                            .rotationEffect(.degrees(showChannels ? 180 : 0))
                        
                        Text("Text Channels")
                            .textCase(.uppercase)
                            .font(.caption)
                            .bold()
                    }
                }
                .foregroundStyle(.gray)
                    ScrollView {
                        VStack {
                            ForEach(ChannelModel.mockData) { channel in
                                Button {
                                    withAnimation {
                                        selectedChannel = channel
                                    }
                                } label: {
                                    HStack {
                                        Image(systemName: "number")
                                        
                                        Text(channel.name)
                                            .font(.title3)
                                            .bold(selectedChannel == channel)
                                        
                                        Spacer()
                                    }
                                }
                                .padding(8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundStyle(selectedChannel == channel ? .white : .gray)
                                .background {
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(selectedChannel == channel ? Color(uiColor: .systemGray3) : .clear)
                                }
                            }
                        }
                        .background(
                                GeometryReader { proxy in
                                    Color.clear.onAppear {
                                        channelsHeight = proxy.size.height
                                    }
                                }
                            )
                    }
                    .frame(height: showChannels ? channelsHeight : 0)
                    
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .frame(width: 240)
            .padding(.top, 60)
            .padding(.horizontal)
            .background {
                Color(.background)
            }
            .ignoresSafeArea()
        }
        .frame(width: 340, alignment: .leading)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background {
            Color(.background)
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
}

#Preview {
    SideMenuView()
}
