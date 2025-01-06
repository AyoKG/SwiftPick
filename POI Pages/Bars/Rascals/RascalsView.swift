//
//  RascalsView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/01/06.
//

import SwiftUI

struct RascalsView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Rascals")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("Rascals Banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Rascals")
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
                .padding(.top, 280)
                .padding(.leading, 290)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 280)
                .padding(.leading, 170)
            }
            
            Text("Situated a stone’s throw away from KFC in Kenilworth, Rascals is perched on a corner in the residential part of the suburb. The restaurant is not too busy during the lunch-time rush, but you can almost immediately tell who the regulars are, especially when a table for six people has been reserved for one. Your best bet is to grab a spot outside on a warm summer day to enjoy the fresh breeze and the view of the mountain peeking from behind the apartment buildings and houses – unless you’re a non-smoker, that is. The area comes complete with a flatscreen TV and a sports schedule below it, so the outdoor crowd won’t miss a thing.The interior is split into two parts: the slightly dark bar area with round barrel tables and high chairs, and a more well-lit section with comfortable restaurant tables and chairs to enjoy your meal.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: Color.gray))
                .padding()
            
            ZStack {
                Image("Rascals2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 190)
                
                Image("Rascals3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Rascals4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Rascals5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
        }
    }
}

#Preview {
    RascalsView()
}
