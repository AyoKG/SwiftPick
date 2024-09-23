//
//  RegisterViewController.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/09/20.
//

import SwiftUI
import Foundation
import FirebaseAuth

class RegisterViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String? = nil
    @Published var isRegistered: Bool = false

    // Function to handle user registration logic (similar to registerPressed)
    func register() {
        if email.isEmpty || password.isEmpty {
            errorMessage = "Please fill in both email and password."
            return
        }
        
        // Perform Firebase authentication
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
            } else {
                self.isRegistered = true 
            }
        }
    }
}
