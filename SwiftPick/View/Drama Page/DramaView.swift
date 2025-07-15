//
//  DramaView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/07/15.
//

import SwiftUI

struct DramaView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Drama")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 370)
                
                Image("Drama3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Drama")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:130)
                    .cornerRadius(80)
                    .padding(.trailing, 230)
                    .padding(.top, 255)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width:40, height: 40)
                    Image(systemName: "phone")
                }
                .padding(.top, 330)
                .padding(.leading, 310)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 330)
                .padding(.leading, 190)
            }
            Text("DRAMA BAR LOUNGE CPT, which originated in Joburg and recently expanded to Cape Town, is a trendy establishment located on Long Street. The venue boasts stylish decor featuring pink neon lights and graffiti-covered Grecian-style statues. It's a popular spot among students and young adults, offering amapiano and Afrobeats music. Guests can expect a vibrant atmosphere with attentive staff and cold beers served on ice.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("Drama2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 110, height: 220)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Drama3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Drama4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Drama5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }
        }
    }
}

#Preview {
    DramaView()
}
