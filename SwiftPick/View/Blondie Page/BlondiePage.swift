//
//  BlondiePage.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/29.
//

import SwiftUI

struct BlondiePage: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Blondie")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 370)
                
                Image("BlondieIMG2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Blondies")
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
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 330)
                .padding(.leading, 190)
            }
            Text("They say blondes have more fun, and that’s true of Blondie Restaurant on Kloof Street, which opened in December 2021. It’s become a favourite local hangout, with its friendly environment, Mediterranean-inspired food and affordable prices. Plus it has great vegan and vegetarian options. The vibe is so cool, you’ll want to stay all night.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("BlondieIMG1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                
                Image("BlondieIMG2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            ZStack {
                Image("BlondieIMG3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("BlondieIMG4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }
        }
    }
}

#Preview {
    BlondiePage()
}
