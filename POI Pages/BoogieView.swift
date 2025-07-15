//
//  BoogieView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2025/01/08.
//

import SwiftUI

struct BoogieView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    Text("Boogie")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: Color.accentColor))
                }
                .padding(.bottom,370)
                
                Image("Boogie1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                
                Image("Boogie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .cornerRadius(80)
                    .padding(.trailing,230)
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
            
            Text("Boogie Night Club is a must-visit destination for those looking to immerse themselves in Cape Town's nightlife. Located in the lively suburb of Claremont, this club attracts a diverse crowd, particularly young locals eager to experience its energetic vibe. The club comes alive after 9 PM, with the heart of the action starting around 10 PM, making it an ideal spot for night owls. The atmosphere is electric, with pulsating beats from both local and international DJs spinning a mix of genres that keeps guests on the dance floor until the early hours of the morning.The interior boasts a modern design with vibrant lighting and spacious dance areas. The bar serves a range of refreshing cocktails and drinks, complemented by friendly bartenders ready to serve. Whether you're coming with friends or looking to meet new people, Boogie provides a welcoming environment where you can let loose and enjoy yourself. It's also worth noting that the crowd tends to be lively and enthusiastic, ensuring that your night out is filled with fun and excitement.")
                .modifier(CustomTextM(fontName: "IndieFlower-Regular",
                                      fontSize: 15,
                                      fontColor: .gray))
                .padding()
            
            ZStack {
                Image("BoogieBanner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .cornerRadius(40)
                    .padding(.trailing, 200)
                
                Image("Boogie2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
                    .cornerRadius(40)
                    .padding(.leading, 170)
            }
            
            ZStack {
                Image("Boogie3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
                    .cornerRadius(40)            }
        }
    }
}

#Preview {
    BoogieView()
}
