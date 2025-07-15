//
//  Club169View.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/01/14.
//

import SwiftUI

struct Club169View: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Club 169")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 370)
                
                Image("Club169 Banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Club 169")
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
            Text("The upstairs section features a slick cigar bar while downstairs offers exotic cocktails in the revamped and larger cocktail bar. The vibey energy is great for anyone looking to have a casual dinner and drink after work or even a fabulous night out. The eclectic energy will draw you in straight away, so grab something to eat and squeak a tekkie.The restaurant, cocktail bar and cigar lounge are open Monday to Saturday, with live Jazz or R&B for Friday sundowners. Additionally, every Friday and Saturday the restaurant turns into a club after dinner. Remember the days when the floors would bounce from the phattest R&B music? Expect these R&B and hip hop flavours from those legendary days to come back on Friday and Saturday nights.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("Club169#1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                
                Image("Club169#2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            ZStack {
                Image("Club169#3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Club169#4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.leading, 160)
            }        }
    }
}

#Preview {
    Club169View()
}
