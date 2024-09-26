//
//  MainTabView.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            HomeView()
                .tag(0)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            SearchView()
                .tag(1)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            ProfileView()
                .tag(2)
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
