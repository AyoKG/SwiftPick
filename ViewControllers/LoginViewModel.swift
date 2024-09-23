//
//  LoginViewModel.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/09/20.
//

import SwiftUI
import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String? = nil
    @Published var isLoggedIn: Bool = false // Change this to trigger navigation

    func login() {
        if email.isEmpty || password.isEmpty {
            errorMessage = "Please fill in both email and password."
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResults, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
            } else {
                // Login successful, change isLoggedIn to true
                self.isLoggedIn = true
            }
        }
    }
}


