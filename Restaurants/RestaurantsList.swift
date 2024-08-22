//
//  RestaurantsList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct RestaurantsList: View {
    @State private var searchText = ""
    var restaurants = restaurantsList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { restaurant in
                    NavigationLink(destination: Text(restaurant)) {
                        Image(restaurant)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Text(restaurant)
                    }
                }
                
            }
            .navigationTitle("Restaurants🍴")
            .searchable(text: $searchText)
        }
        
    }
    
    var searchResults: [String] {  
        if searchText.isEmpty {
            return restaurants
        } else {
            return restaurants.filter { $0.contains(searchText) }
        }
    }
}

#Preview {
    RestaurantsList()
}
