//
//  AuthService.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 27.09.2024.
//

import Foundation
import Supabase

enum Secrets {
    static let supabaseURL = "https://nqrxlzwbsdqrbdgfxnei.supabase.co"
    static let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5xcnhsendic2RxcmJkZ2Z4bmVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0MjU3MjcsImV4cCI6MjA0MzAwMTcyN30.0S_nNo39J1CJZyem8Ed0DvnAX_bSTKOXkmPs4dxA7AQ"
}

@Observable
final class AuthService {
    static let shared = AuthService()
    
    private let auth = SupabaseClient(supabaseURL: URL(string: Secrets.supabaseURL)!, supabaseKey: Secrets.supabaseKey).auth
    
    var currentUser: User?
    
    private init() { 
        Task {
            do {
                currentUser = try await auth.session.user
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func register(email: String, password: String) async throws {
        let response = try await auth.signUp(email: email, password: password)
        let user = response.user
        self.currentUser = user
    }
    
    func login(email: String, password: String) async throws {
        let response = try await auth.signIn(email: email, password: password)
        let user = response.user
        self.currentUser = user
    }
    
    func logout() async throws {
        try await auth.signOut()
        self.currentUser = nil
    }
}
