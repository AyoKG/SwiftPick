//
//  ShoppingList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct ShoppingList: View {
    @State private var searchText = ""
    var shopping = shoppingList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) {shop in
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
            .searchable(text: $searchText)
        }
        
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return shopping
        } else {
            return shopping.filter { $0.contains(searchText) }
        }
    }
}

#Preview {
    ShoppingList()
}
