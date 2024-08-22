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
                    .padding(.trailing, 190)
                    

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
                    .padding(.leading, 190)
                    
                }
                .padding(.bottom, -33)
                
                
                //MARK: - POI Restaurants card
                HStack {
                    ZStack {
                        NavigationLink(destination: RestaurantsList()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.pink)
                                .frame(width: 160, height: 160)
                                .overlay(
                                    Image("restaurants icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 135, height: 135)
                                )
                        }
                        
                        Text("restaurants")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 27,
                                                  fontColor: Color.pink))
                            .offset(y: 100)
                    }
                    .padding(.trailing, 20) // Add padding to separate the cards
                    
                    // MARK: - Shopping Malls Card
                    ZStack {
                        NavigationLink(destination: ShoppingList()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.blue)
                                .frame(width: 160, height: 160)
                                .overlay(
                                    Image("Shopping icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 130, height: 130)
                                )
                        }
                        
                        Text("Shopping")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 27,
                                                  fontColor: Color.blue))
                            .offset(y: 100)
                    }
                }

                .padding(.bottom, 45)
                
                //MARK: - POI Beach card
                ZStack {
                    VStack {
                        NavigationLink(destination: BeachesList()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.orange)
                                .frame(width: 160, height: 160)
                                .overlay(
                                    Image("Beach icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 140, height: 140)
                                )
                        }
                        Text("Beaches")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 27,
                                                  fontColor: Color.orange))
                            .offset(y: -10)
                    }
                    .padding(.trailing, 180)

                    VStack {
                        NavigationLink(destination: HikingList()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.green)
                                .frame(width: 160, height: 160)
                                .overlay(
                                    Image("Hiking icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 140, height: 140)
                                )
                        }
                        Text("Hiking")
                            .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                                  fontSize: 27,
                                                  fontColor: Color.green))
                            .offset(y: -10)
                    }
                    .padding(.leading, 190)
                }

                
            }
        }
    }
    
    
}

#Preview {
    HomeView2()
}
