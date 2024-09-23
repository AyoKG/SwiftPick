//
//  LoginScreen.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/03/27.
//

import SwiftUI

struct LoginScreen: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            // Welcome Text
            Text("Let's get you logged in")
                .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                      fontSize: 30,
                                      fontColor: Color.accentColor))
                .padding(.top, 120)

            VStack(spacing: 15) {
                VStack(alignment: .center, spacing: 30) {
                    // Email TextField
                    CustomTextField(placeholder: Text("Email📧"),
                                    fontName: "Pacifico-Regular",
                                    fontSize: 18,
                                    fontColor: Color.gray,
                                    username: $viewModel.email)
                    Divider()
                        .background(Color.gray)
                    
                    // Password SecureField
                    CustomSecureField(placeholder: Text("Password🔒"),
                                      fontName: "Pacifico-Regular",
                                      fontSize: 18,
                                      fontColor: Color.gray,
                                      password: $viewModel.password)
                    Divider()
                        .background(Color.gray)
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

            // Login Button
            Button(action: {
                viewModel.login() // Call login function from ViewModel
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

            // Navigation link for successful login
            NavigationLink(destination: HomeView2().navigationBarBackButtonHidden(true),
                           isActive: $viewModel.isLoggedIn) {
                EmptyView()
            }

            // Show error message if login fails
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    LoginScreen()
}

struct CustomTextM: ViewModifier {
    let fontName: String
    let fontSize: CGFloat
    let fontColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(fontColor)
    }
}


