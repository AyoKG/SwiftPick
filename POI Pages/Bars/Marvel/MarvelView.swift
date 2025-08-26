//
//  SwiftUIView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2025/01/06.
//

import SwiftUI

struct MarvelView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Marvel")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 360)
                Image("Marvel banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Marvel")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
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
                .padding(.leading, 290)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 360)
                .padding(.leading, 170)
            }
            
            Text("The tone, vibe and atmosphere are set by some of the friendliest staff in town. This classic bar is home to a range of sexy, house and chilled-out beats. While the setup isn't anything too fancy, the atmosphere is unlike any other bar in Long Street. With a wide variety of DJs, it is safe to say you will have an amazing time out. Situated at the end of Long Street in the heart of Cape Town, be sure to come have some drinks at this simplistic bar and meet some amazing people, dance, and chill out.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("Marvel 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 170)
                
                Image("Marvel 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Marvel 4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 170)
                
                Image("Marvel 5")
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
    MarvelView()
}
