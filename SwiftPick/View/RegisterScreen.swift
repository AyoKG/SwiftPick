//
//  RegisterScreen.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/16.
//

import SwiftUI

struct RegisterScreen: View {
    @StateObject private var viewModel = RegisterViewModel() // ViewModel to handle logic
    
    var body: some View {
        VStack {
            // Welcome Text
            Text("Register")
                .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                      fontSize: 50,
                                      fontColor: Color.accentColor))
        }
        .padding(.top, 120)
        
        VStack(spacing: 15) {
            VStack(alignment: .center, spacing: 30) {
                VStack(alignment: .center) {
                    CustomTextField(placeholder: Text("Email📧"),
                                    fontName: "Pacifico-Regular",
                                    fontSize: 18,
                                    fontColor: Color.gray,
                                    username: $viewModel.email)
                    Divider()
                        .background(Color.gray)
                }
                VStack(alignment: .center) {
                    CustomSecureField(placeholder: Text("Password🔒"),
                                      fontName: "Pacifico-Regular",
                                      fontSize: 18,
                                      fontColor: Color.gray,
                                      password: $viewModel.password)
                    Divider()
                        .background(Color.gray)
                }
            }
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Forgot Password?")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 14,
                                              fontColor: Color.gray))
                }
            }
        }
        .padding(.all, 90)
        
        // Button for Registration and Navigation
        if viewModel.isRegistered {
            NavigationLink(destination: HomeView2().navigationBarBackButtonHidden(true)) {
                ZStack {
                    Circle()
                        .foregroundColor(Color.blue)
                        .frame(width: 60, height: 60)
                    Image(systemName: "arrow.right")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 30)
        } else {
            Button(action: {
                viewModel.register() // Register the user
            }) {
                ZStack {
                    Circle()
                        .foregroundColor(Color.blue)
                        .frame(width: 60, height: 60)
                    Image(systemName: "arrow.right")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 30)
        }

        // Show error message if registration fails
        if let errorMessage = viewModel.errorMessage {
            Text(errorMessage)
                .foregroundColor(.red)
                .padding()
        }
        
        Spacer()
    }
}

#Preview {
    RegisterScreen()
}
