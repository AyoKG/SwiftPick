//
//  YTPage.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/18.
//

import SwiftUI

struct YTPage: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Yours Truly")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 340)
                
                Image("YT Background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("YT_Image")
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
            Text("Shrouded in greenery, Yours Truly is a chilled bar-café on the ever-buzzy Kloof Street, where you can truly feel the rhythm and energy of the Mother City. Situated next to a backpackers’ lodge, it’s a popular hangout for student travellers, the beard-and-tattoo brigade, and anyone who enjoys delicious pizzas (the Deluxe is a personal favourite), interesting sandwiches, and cold beer on tap. As the sun starts setting and the place fills up, move on up to the Up Yours rooftop terrace, where super-cool local DJs take things to the next level (pun intended). If you’re lucky, resident bulldog Molly, who is just the cutest, might make a guest appearance.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("YT IMG2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                
                Image("YT IMG3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack{
                Image("YT IMG4")
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
}

#Preview {
    YTPage()
}
