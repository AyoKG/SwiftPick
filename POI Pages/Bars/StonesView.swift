//
//  StonesView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2024/11/22.
//

import SwiftUI

struct StonesView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Stones")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom, 360)
                Image("StonesV1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Stones")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .cornerRadius(80)
                    .padding(.trailing, 230)
                    .padding(.top, 275)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40)
                    Image(systemName:"phone")
                }
                .padding(.top, 360)
                .padding(.leading, 290)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 40, height: 40)
                    Image(systemName: "location")
                }
                .padding(.top, 360)
                .padding(.leading, 170)
            }
            Text("Head up the stairs from Lower Main Road, to a pool hall with over 200 tables. Adorned with colourful Japanese artwork and filled with rock and popular music, Stones draws Observatory's hippies and students, like an 8 ball to the pocket. Check out their theme nights, student nights, giveaways and drinks specials.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            ZStack {
                Image("StonesV2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 170)
                
                Image("StonesV3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            ZStack {
                Image("StonesV4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .cornerRadius(40)
                    .padding(.trailing, 170)
                
                Image("StonesV5")
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
    StonesView()
}
