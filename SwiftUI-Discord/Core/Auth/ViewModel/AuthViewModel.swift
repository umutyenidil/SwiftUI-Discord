//
//  AuthViewModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var loginEmail = ""
    @Published var loginPassword = ""
    
    @Published var registerEmail = ""
    @Published var registerPassword = ""
    @Published var registerUsername = ""
    @Published var registerDisplayName = ""
    @Published var registerDOB: Date?
    
    func login() {
        Task {
            do {
                try await AuthService.shared.login(email: loginEmail, password: loginPassword)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func register() {
        Task {
            do {
                try await AuthService.shared.register(email: registerEmail, password: registerPassword)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func logout() {
        Task {
            do {
                try await AuthService.shared.logout()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
