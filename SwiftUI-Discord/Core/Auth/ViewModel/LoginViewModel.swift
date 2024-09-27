//
//  LoginViewModel.swift
//  SwiftUI-Discord
//
//  Created by Umut Yenidil on 26.09.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
}
