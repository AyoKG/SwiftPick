//
//  CommonBottomView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/22.
//

import SwiftUI

struct CommonBottomView: View {
    @State private var selectedTab: String = "Home"

    var body: some View {
        TabView(selection: $selectedTab) {
            // Home Tab
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag("Home")
            
            // Messages Tab
            Text("Messages")
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("Messages")
                }
                .tag("Messages")
            
            // Profile Tab
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag("Profile")
        }
        .accentColor(.blue) // Customize tab selection color
    }
}

struct HomeView: View {
    @State private var searchText = ""
    var allItems = ["Bars","Clubs","Restaurants","Shopping","Beaches","Hiking"]
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return allItems
        } else {
            return allItems.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack(alignment: .center) {
                    Text("What are we feeling?")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 34,
                                              fontColor: Color.accentColor))
                }
                
                TextField("Search", text: $searchText)
                    .padding(.leading, 40)
                    .frame(width: 355, height: 40)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .offset(y: -30)
                    .overlay(HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.trailing, 305)
                            .offset(y: -30)
                    })
                
                if filteredItems.contains("Bars") {
                    // MARK: - POI Bars card
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
                        
                        if filteredItems.contains("Clubs") {
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
                    }
                    .padding(.bottom, -33)
                }
                
                if filteredItems.contains("Restaurants") || filteredItems.contains("Shopping") {
                    HStack {
                        if filteredItems.contains("Restaurants") {
                            // MARK: - POI Restaurants card
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
                        }
                        
                        if filteredItems.contains("Shopping") {
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
                    }
                    .padding(.bottom, 45)
                }
                
                if filteredItems.contains("Beaches") || filteredItems.contains("Hiking") {
                    // MARK: - POI Beach card
                    ZStack {
                        if filteredItems.contains("Beaches") {
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
                        }
                        
                        if filteredItems.contains("Hiking") {
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
//        CommonBottomView()
    }
}

struct ProfileView2: View {
    var body: some View {
        Text("Profile Screen")
    }
}

#Preview {
    CommonBottomView()
}




