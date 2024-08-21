//
//  RestaurantsList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct RestaurantsList: View {
    var restaurants = restaurantsList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurants, id:\.self) { restaurant in
                    NavigationLink(destination: Text(restaurant)) {
                        Image(restaurant)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Text(restaurant)
                    }
                }
                .navigationTitle("Restaurants🍴")
            }
        }
    }
}

#Preview {
    RestaurantsList()
}
