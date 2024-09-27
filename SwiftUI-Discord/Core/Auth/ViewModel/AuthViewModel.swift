//
//  AuthViewModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import Foundation
import SwiftUI

class AuthViewModel: Observable {
    var loginEmail = ""
    var loginPassword = ""
    
    var registerEmail = ""
    var registerPassword = ""
    var registerUsername = ""
    var registerDisplayName = ""
    var registerDOB: Date?
    
    func login() {
        
    }
    
    func register() {
        
    }
}

private struct AuthViewModelKey: EnvironmentKey {
    static var defaultValue: AuthViewModel = AuthViewModel()
}

extension EnvironmentValues {
    var authViewModel: AuthViewModel {
        get { self[AuthViewModelKey.self] }
        set { self[AuthViewModel.self] = newValue }
    }
}
