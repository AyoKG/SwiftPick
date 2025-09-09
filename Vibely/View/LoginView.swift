//
//  LoginView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2025/08/28.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color(red: 0.0, green: 0.3, blue: 0.3)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 60)
                
                // Logo
                Image("ClearLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 20)
                
                // Title
                Text("LOGIN")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .tracking(4)
                    .padding(.bottom, 40)
                
                // Form fields - Now connected to viewModel
                VStack(spacing: 25) {
                    CustomEmailTextField(text: $viewModel.email, placeholder: "Email")
                    CustomPasswordField(text: $viewModel.password, placeholder: "Password")
                }
                .padding(.bottom, 20)
                
                // Forgot password link
                HStack {
                    Spacer()
                    Button("Forgot password?") {
                        // Handle forgot password action
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .padding(.trailing, 50)
                }
                .padding(.bottom, 70)
                
                // Enter button - Now calls viewModel.login()
                Button(action: {
                    viewModel.login()
                }) {
                    Text("ENTER")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.black)
                        .tracking(2)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 18)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .overlay(
                            Capsule()
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                }
                .padding(.horizontal, 50)
                
                // Navigation link - Connected to viewModel.isLoggedIn
                NavigationLink(destination: CommonBottomView().navigationBarBackButtonHidden(true),
                               isActive: $viewModel.isLoggedIn) {
                    EmptyView()
                }

                // Show error message if login fails - Connected to viewModel.errorMessage
                if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .font(.system(size: 14))
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                }
                    
                
                Spacer()
                
                // Back button
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 20))
                            Text("BACK")
                                .font(.system(size: 18, weight: .medium))
                                .tracking(1)
                        }
                        .foregroundColor(.white)
                    }
                    .padding(.leading, 30)
                    
                    Spacer()
                }
                .padding(.bottom, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CustomEmailTextField: View {
    @Binding var text: String
    let placeholder: String
    var keyboardType: UIKeyboardType = .emailAddress
    var textInputAutocapitalization: TextInputAutocapitalization = .never
    
    var body: some View {
        TextField("", text: $text, prompt: Text(placeholder).foregroundColor(.gray))
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .font(.system(size: 16))
            .foregroundColor(.white)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1.5)
            )
            .padding(.horizontal, 50)
            .keyboardType(keyboardType)
            .textInputAutocapitalization(textInputAutocapitalization)
    }
}

struct CustomPasswordField: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        SecureField("", text: $text, prompt: Text(placeholder).foregroundColor(.gray))
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .font(.system(size: 16))
            .foregroundColor(.white)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1.5)
            )
            .padding(.horizontal, 50)
    }
}

#Preview {
    LoginView()
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
