//
//  TherapyPage.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/20.
//

import SwiftUI

struct TherapyPage: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Therapy")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("Therapy IMG 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Therapy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .cornerRadius(80)
                    .padding(.trailing, 230)
                    .padding(.top, 255)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "phone")
                }
                .padding(.top, 330)
                .padding(.leading, 310)
                
                ZStack {
                    //                    Button(action )
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    Image(systemName: "location")
                }
            }
            .padding(.top, 330)
            .padding(.leading, 190)
            
            
        }
        
        
        Text("What could be more therapeutic than sitting round a table enjoying good conversation and good food, a glass of excellent wine or a cocktail or two? That’s what legendary Cape Town-born and Khayelitsha-bred DJs and creatives, Loyiso Mdebuka and Vincent Mvelase Manzini (aka DJ Loyd and Sir Vincent) had in mind when they came up with the idea for this upmarket new eatery just off Kloof Street.")
            .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                  fontSize: 15,
                                  fontColor: .gray))
            .padding()
        
        ZStack {
            Image("Therapy IMG4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160)
                .cornerRadius(40)
                .padding(.trailing, 200)
            
            
            Image("Therapy IMG 6")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 190)
                .cornerRadius(40)
                .padding(.leading, 170)
        }
        
        ZStack{
            Image("Therapy IMG7")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .cornerRadius(40)
                .padding(.trailing, 200)
            
            Image("YT IMG5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180)
                .cornerRadius(40)
                .padding(.leading, 160)
        }
    }
}

#Preview {
    TherapyPage()
}
