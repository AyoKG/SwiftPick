//
//  BarcadiaView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct BarcadiaView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Barcadia")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 320)
                
                Image("Barcadia venue")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("BarcadiaLogo")
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
                        .frame(width: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 330)
                .padding(.leading, 190)
            }
            Text("Cape Town’s bar scene just got a thrilling upgrade with Barcadia, a retro-inspired bar and arcade that combines classic arcade games, modern gaming and a tempting drinks menu – all without costing a dime to enter or play. Tucked away at 62 Hout Street, Barcadia is the city’s first arcade bar, offering a unique experience in the city’s nightlife scene. Stepping inside, you’re instantly transported to a world of nostalgia, with a checkered pattern floor and custom-made neon signs along the walls. You might recognise iconic characters like Mario and Sonic the Hedgehog.Barcadia doesn’t just rely on classic aesthetics; it also features a number of gaming options. Retro gaming consoles are on display and for those seeking a more modern experience, a PlayStation 5 is hooked up to a TV behind the bar.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 13.5,
                                      fontColor: Color.gray))
                .padding()
            
            ZStack {
                Image("BarcadiaV1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("BarcadiaV2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("BarcadiaV3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("BarcadiaV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:160)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
        }
    }
}

#Preview {
    BarcadiaView().navigationBarBackButtonHidden(true)
}
