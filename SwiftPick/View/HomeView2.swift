//
//  HomeView2.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/19.
//

import SwiftUI

struct HomeView2: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack(alignment: .center) {
                    Text("What are we feeling?")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 34,
                                              fontColor: Color.accentColor))
                }
                
                //MARK: - POI Bars card
                ZStack {
                    VStack {
                        NavigationLink(destination: BarList()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.yellow)
                                    .frame(width: 160, height: 160)

                                Image("Bar icon2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 160, height: 160)
                            }
                        }


                        Text("Bars")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 30,
                                                  fontColor: Color.yellow))
                            .offset(y: -20)
                    }
                    .padding(.trailing, 170)
                    

                    // MARK: - Club card
                    VStack {
                        NavigationLink(destination: ClubList()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.purple)
                                    .frame(width: 160, height: 160)

                                Image("Club icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140, height: 140)
                            }
                        }

                        Text("Clubs")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 30,
                                                  fontColor: Color.purple))
                            .offset(y: -20)
                    }
                    .padding(.leading, 170)
                    
                }
                .padding(.bottom, -27)
                
                
                //MARK: - POI Restaurants card
                ZStack {
                    NavigationLink(destination: RestaurantsList()) {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.pink)
                            .frame(width: 160, height: 160)
                            .padding(.trailing, 170)
                            .overlay(HStack {
                                Image("restaurants icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 135, height: 135)
                                    .padding(.trailing, 170)
                            })
                    }
                    
                    Text("restaurants")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 27,
                                              fontColor: Color.pink))
                        .padding(.trailing, 175)
                        .offset(y: 100)
                    
                    //MARK: - POI Shopping malls card
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.blue)
                        .frame(width: 160, height: 160)
                        .padding(.leading, 170)
                        .overlay(HStack {
                            Image("Shopping icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(.leading, 176)
                        })
                    Text("Shopping")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 27,
                                              fontColor: Color.blue))
                        .padding(.leading, 170)
                        .offset(y: 100)
                }
                .padding(.bottom, 45)
                
                //MARK: - POI Beach card
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.orange)
                        .frame(width: 160, height: 160)
                        .padding(.trailing, 170)
                        .overlay(HStack {
                            Image("Beach icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 140, height: 140)
                                .padding(.trailing, 170)
                        })
                    
                    Text("Beaches")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 27,
                                              fontColor: Color.orange))
                        .padding(.trailing, 160)
                        .offset(y: 105)
                    
                    //MARK: - POI Hiking card
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.green)
                        .frame(width: 160, height: 160)
                        .padding(.leading, 175)
                        .overlay(HStack {
                            Image("Hiking icon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 140, height: 140)
                                .padding(.leading, 170)
                        })
                    Text("Hiking")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 27,
                                              fontColor: Color.green))
                        .padding(.leading, 170)
                        .offset(y: 105)
                }
                
            }
        }
    }
}

#Preview {
    HomeView2()
}
