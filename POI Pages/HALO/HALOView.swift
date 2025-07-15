//
//  HALOView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/07/04.
//

import SwiftUI

struct HALOView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text ("HALO")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("HaloBanner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("HALO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:130)
                    .cornerRadius(80)
                    .padding(.trailing, 230)
                    .padding(.top, 255)
                
                ZStack{
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 330)
                .padding(.leading, 190)
            }
            Text("Halo Nightclub Cape Town – Experience the Vibe HALO Nightclub in Cape Town is a high-tech, two-story venue known for its immersive sensory experience and cutting-edge technology. It features a premium cocktail and social lounge (Groove Lounge) on the upper level and a world-class clubbing venue (Main Room) in the basement, according to VISI.co.za. HALO is designed to provide a unique and sophisticated nightlife experience, with features like a Funktion-One sound system, avant-garde visual technology, and a layout that enhances flow and accessibility, says Building & Decor")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            ZStack {
                Image("Halo1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 180)
                
                Image("Halo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Halo3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Halo4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }
        }
    }
}

#Preview {
    HALOView()
}
