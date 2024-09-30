//
//  SwiftUI_DiscordApp.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 25.09.2024.
//

import SwiftUI

@main
struct SwiftUI_DiscordApp: App {
    @StateObject private var authViewModel = AuthViewModel()
    var body: some Scene {
        WindowGroup {
            if let user = AuthService.shared.currentUser {
                MainTabView()
                    .environmentObject(authViewModel)
            } else {
                AuthView()
                    .environmentObject(authViewModel)
            }
        }
    }
}
