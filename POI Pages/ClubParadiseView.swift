//
//  ClubParadiseView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/01/14.
//

import SwiftUI

struct ClubParadiseView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Club Paradise")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("Club Paradise Banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Club Paradise")
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
                .padding(.top, 360)
                .padding(.leading, 310)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 360)
                .padding(.leading, 190)
            }
            
            Text("The high ratings of this club wouldn't be possible without the gracious staff. Cool service is something guests agree upon here. The pretty atmosphere gladdens people and attracts more clients.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("Club Paradise1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Club Paradise2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Club Padradise3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Club Paradise4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
        }
    }
}

#Preview {
    ClubParadiseView()
}
