//
//  HomeView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct HomeView: View {
    @State var showSideMenu = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            SideMenuView()
            
            // ChatView
            ChatView(showSideMenu: $showSideMenu)
                .offset(x: showSideMenu ? 340 : 0)
            
            Color.black
                .opacity(showSideMenu ? 0.7 : 0)
                .offset(x: showSideMenu ? 340 : 0)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation {
                        showSideMenu.toggle()
                    }
                }
        }
        .toolbar(showSideMenu ? .visible : .hidden, for: .tabBar)
    }
}

#Preview {
    HomeView()
}
