//
//  RegisterView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2025/08/26.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var agreedToTerms = false
    @State private var showValidationError = false
    @State private var validationMessage = ""

    @State private var selectedDate = Date()
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject private var viewModel = RegisterViewModel()
    @State private var navigateToHome = false
    
    var body: some View {
        ZStack {
            // Background gradient
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
                    .frame(width: 70, height: 60)
                    .foregroundColor(Color(red: 0.30, green: 0.82, blue: 0.77))
                    .padding(.bottom, 40)
                
                // Title
                Text("REGISTER")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .tracking(4)
                    .padding(.bottom, 30)
                
                // Form fields
                VStack(spacing: 25) {
                    CustomTextField1(text: $name, placeholder: "Name")
                    CustomTextField1(text: $surname, placeholder: "Surname")
                    DOBTextFieldBar(date: $selectedDate)
                    CustomTextField1(text: $email, placeholder: "Email")
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    CustomSecureFieldBar(text: $password, placeholder: "Password")
                }
                .padding(.bottom, 3)
                
                // Terms and conditions
                HStack(alignment: .top, spacing: 0) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("I hereby agree to and will follow the the")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                            .multilineTextAlignment(.leading)
                        
                        Button("Term and conditions") {
                            // Handle terms tap
                        }
                        .foregroundColor(Color(red: 0.30, green: 0.82, blue: 0.77))
                        .font(.system(size: 13))
                        .underline()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Checkbox
                    Button(action: {
                        agreedToTerms.toggle()
                    }) {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray.opacity(0.7), lineWidth: 1.5)
                            .frame(width: 20, height: 20)
                            .background(
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(agreedToTerms ? Color(red: 0.30, green: 0.82, blue: 0.77) : Color.clear)
                            )
                            .overlay(
                                Image(systemName: "checkmark")
                                    .font(.system(size: 11, weight: .bold))
                                    .foregroundColor(agreedToTerms ? .black : .clear)
                            )
                    }
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 15)
                
                // **Validation message with wrapping**
                if showValidationError {
                    Text(validationMessage)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 50)
                        .padding(.bottom, 10)
                }
                
                // Submit button
                Button(action: {
                    submitRegistration()
                }) {
                    Text("SUBMIT")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(Color(red: 0.06, green: 0.08, blue: 0.11))
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(
                            Capsule()
                                .fill(.white)
                                .overlay(
                                    Capsule()
                                        .stroke(.black, lineWidth: 3)
                                )
                        )
                        .tracking(2)
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 20)
                
                Spacer()
                
                // Back button
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack(spacing: 12) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 18, weight: .medium))
                            Text("BACK")
                                .font(.system(size: 18, weight: .medium))
                                .tracking(2)
                        }
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 50)
            }
            
            // NavigationLink
            NavigationLink(destination: HomeView2().navigationBarBackButtonHidden(true), isActive: $navigateToHome) {
                EmptyView()
            }
            .hidden()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    private func submitRegistration() {
        // Validate required fields
        guard !name.isEmpty, !surname.isEmpty, !email.isEmpty, !password.isEmpty, agreedToTerms else {
            validationMessage = "We need just a bit more info to get you set up"
            showValidationError = true
            return
        }
        
        // Call your existing registration method
        viewModel.register()
        
        // Navigate to HomeView2
        navigateToHome = true
    }
}

struct CustomTextField1: View {
    @Binding var text: String
    let placeholder: String
    var keyboardType: UIKeyboardType = .default
    var textInputAutocapitalization: TextInputAutocapitalization = .sentences
    
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

struct CustomSecureFieldBar: View {
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

struct DOBTextFieldBar: View {
    @Binding var date: Date
    @State private var showPicker = false
    @State private var hasSelectedDate = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                if hasSelectedDate {
                    Text(date.formatted(date: .abbreviated, time: .omitted))
                        .foregroundColor(.white)
                } else {
                    Text("Date of Birth")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1.5)
            )
            .onTapGesture {
                withAnimation {
                    showPicker.toggle()
                }
            }
            
            if showPicker {
                DatePicker("", selection: $date, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .labelsHidden()
                    .padding(.top, 5)
                    .padding(.horizontal, 10)
                    .background(Color(.systemBackground))
                    .cornerRadius(8)
                    .accentColor(.primary)
                
                Button("Done") {
                    hasSelectedDate = true
                    withAnimation { showPicker = false }
                }
                .font(.callout)
                .foregroundColor(.accentColor)
                .padding(.top, 5)
            }
        }
        .padding(.horizontal, 50)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
