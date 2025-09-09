//
//  LandingScreen.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2024/04/16.
//

import SwiftUI

struct LandingView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                // Gradient background
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.black,
                        Color(red: 0.1, green: 0.3, blue: 0.3),
                        Color(red: 0.2, green: 0.4, blue: 0.4)
                    ]),
                    startPoint: UnitPoint(x: 0.5, y: 0.3),
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                // Faded background logo
                Image("ClearLogo") // Replace with your logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .opacity(0.08)
                    .foregroundColor(Color(red: 0.4, green: 0.8, blue: 0.8))
                    .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.14)
                
                VStack(spacing: 40) {
                    Spacer()
                    
                    // Logo - you'll need to replace with your actual logo image
                    Image("ClearLogo") // Replace with your logo
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 120)
                        .foregroundColor(Color(red: 0.4, green: 0.8, blue: 0.8))
                    
                    // Welcome text
                    VStack(spacing: 8) {
                        Text("Welcome")
                            .font(.system(size: 35, weight: .light))
                            .foregroundColor(.white)
                        
                        Text("to")
                            .font(.system(size: 35, weight: .light))
                            .foregroundColor(.white)
                        
                        Text("VIBELY")
                            .font(.system(size: 42, weight: .bold, design: .default))
                            .foregroundColor(.white)
//                            .letterSpacing(2)
                    }
                    
                    Spacer()
                    
                    // Buttons
                    VStack(spacing: 20) {
                        // Login Button
                        NavigationLink(destination: LoginView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 2)
                                    .frame(width: 280, height: 55)
                                
                                Text("LOGIN")
                                    .font(.system(size: 25, weight: .medium))
                                    .foregroundColor(.white)
//                                    .letterSpacing(1)
                            }
                        }
                        
                        // Register Button
                        NavigationLink(destination: RegistrationView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .stroke(Color.black, lineWidth: 2)
                                    .frame(width: 280, height: 55)
                                
                                Text("REGISTER")
                                    .font(.system(size: 25, weight: .medium))
                                    .foregroundColor(.black)
//                                    .letterSpacing(1)
                            }
                        }
                    }
                    .padding(.bottom, 50)
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LandingView()
}
