//
//  LandingScreen.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/16.
//

import SwiftUI

struct LandingScreen: View {
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Image("LogoImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 100)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5)
                        )
                    Text("SwiftPick")
                        .font(Font.custom("Pacifico-Regular", size: 30))
                        .bold()
                    NavigationLink(destination: LoginScreen()) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 320, height: 70)
                            .overlay(HStack{
                                Text("Login")
                                    .font(Font.custom("Pacifico-Regular", size: 25))
                                    .bold()
                            })
                            .padding(.all)
                    }
                    NavigationLink(destination: RegisterScreen()) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 320, height: 70)
                            .overlay(HStack{
                                Text("Register")
                                    .font(Font.custom("Pacifico-Regular", size: 25))
                                    .bold()
                            })
                            .padding(.all)
                    }
                }
            }
        }
    }
}

#Preview {
    LandingScreen()
}
