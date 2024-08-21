//
//  ShoppingList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct ShoppingList: View {
    var shopping = shoppingList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(shopping, id: \.self) {shop in
                    NavigationLink(destination: Text(shop)) {
                        Image(shop)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:50, height: 50)
                            .clipShape(Circle())
                        Text(shop)
                    }
                }
            }
            .navigationTitle("Shopping Malls🛍️")
        }
        
    }
}

#Preview {
    ShoppingList()
}
