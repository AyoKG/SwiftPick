//
//  HomeView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/16.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        ScrollView{
            VStack {
                HStack(alignment: .center) {
                    Text("Where should we go?")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 35,
                                              fontColor: Color.accentColor))
                    
                }
                //                .padding(.bottom, 70)
                
                //POI Bars & Clubs cards
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        NavigationLink(destination: YTPage()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.white)
                                .frame(width: 150, height: 150)
                                .padding(.leading, 10)
                                .overlay(HStack {
                                    Image("Drama1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:140, height: 140)
                                        .cornerRadius(50)
                                        .padding(.leading, 12)
                                })
                        }
                        
                        
                        NavigationLink(destination: YTPage()) {
                            HStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 150)
                                    .overlay(HStack{
                                        Image("YT_Image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:140)
                                            .cornerRadius(50)
                                    })
                            }
                        }
                        NavigationLink(destination: WaitingRoomPage()){
                            HStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 150)
                                    .overlay(HStack{
                                        Image("The waiting room")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:140)
                                            .cornerRadius(50)
                                            .padding(.leading, 1)
                                    })
                            }
                        }
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading)
                            .overlay(HStack {
                                Image("Boogie")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140)
                                    .cornerRadius(50)
                                    .padding(.leading)
                            })
                        
                        NavigationLink(destination: BlondiePage()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.white)
                                .frame(width: 150, height: 150)
                                .overlay(HStack {
                                    Image("Blondies")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 140)
                                        .cornerRadius(50)
                                    
                                })
                        }
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .overlay(HStack {
                                Image("Club 169")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140)
                                    .cornerRadius(50)
                                
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .overlay(HStack {
                                Image("Club Paradise")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140)
                                    .cornerRadius(50)
                                
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .overlay(HStack {
                                Image("SGT Pepper")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140)
                                    .cornerRadius(50)
                                
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .overlay(HStack {
                                Image("Stones")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 140)
                                    .cornerRadius(50)
                                
                            })
                        
                        
                        
                    }
                }
                .padding(.top, 50)
                
                
                //POI Restaurant cards
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        NavigationLink(destination: TherapyPage()) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.white)
                                .frame(width: 150, height: 150)
                                .padding(.leading, 10)
                                .overlay(HStack {
                                    Image("Therapy")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:140, height: 140)
                                        .cornerRadius(50)
                                        .padding(.leading, 12)
                                })
                        }
                        
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Zenzero")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Cafe Caprice")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Sonny & Irene")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("FYN")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Aiko")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("KSH")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Swan Cafe")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .padding(.leading, 10)
                            .overlay(HStack {
                                Image("Mantra cafe")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:140, height: 140)
                                    .cornerRadius(50)
                                    .padding(.leading, 12)
                            })
                    }
                    .padding(.top, 80)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
