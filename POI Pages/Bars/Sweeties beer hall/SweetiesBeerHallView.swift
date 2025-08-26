//
//  SweetiesBeerHallView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2025/07/08.
//

import SwiftUI

struct SweetiesBeerHallView: View {
    @State private var showingMenu = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Sweeties Beer Hall")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("SweetiesBanner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Sweeties Beer Hall")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .cornerRadius(80)
                    .padding(.trailing, 230)
                    .padding(.top, 255)
                
                // Menu button (new third button)
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "menucard")
                        .foregroundColor(.white)
                }
                .padding(.top, 330)
                .padding(.leading, 70)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        showingMenu = true
                    }
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "location")
                        .foregroundColor(.white)
                }
                .padding(.top, 330)
                .padding(.leading, 190)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "phone")
                        .foregroundColor(.white)
                }
                .padding(.top, 330)
                .padding(.leading, 310)
            }
            Text("Joling's a must.Sweeties Beerhall, blazes with eclectic energy every night. The first floor balcony perfectly catches Cape Town's abundant sunshine, whilst providing the perfect vantage point to people watch.Sip on their glorious signature cocktail, or award winning local beers.Enjoy live music, karaoke, open mic nights, speed dating, beer pong, trivia, and local food nights.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("SBH1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("SBH2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("SBH3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("SBH4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 165)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }
        }
        .overlay(
            SweetiesMenuPopupView(showingMenu: $showingMenu)
        )
    }
}

#Preview {
    SweetiesBeerHallView()
}
