//
//  WaitingRoomPage.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/19.
//

import SwiftUI

struct WaitingRoomPage: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Waiting Room")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("WR Background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("The waiting room")
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
                
                ZStack{
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 330)
                .padding(.leading, 190)
            }
            Text("The Waiting Room in Cape Town offers a vibrant and retro atmosphere for live bands, DJ events, and rooftop views. Located above the Royale Eatery, it features indoor lounge and dancefloor areas, as well as an adjacent balcony. The rooftop terrace is cozy with hanging lanterns, perfect for pre- or post-dinner cocktails. With a focus on live music and weekend party vibes indoors, the rooftop offers a more relaxed ambiance. Serving cocktails and a variety of beers, it's a top spot for chill-out times and live music enthusiasts in Cape Town.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                       fontSize: 15,
                                       fontColor: Color.gray))
                .padding()
            
            ZStack {
                Image("WRIMG2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                
                Image("WRIMG3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack{
                Image("WRIMG4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("WRIMG5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }
        }
    }
}

#Preview {
    WaitingRoomPage()
}
