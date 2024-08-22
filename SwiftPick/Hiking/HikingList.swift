//
//  HikingList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct HikingList: View {
    @State private var seachText = ""
    var hiking = hikingList
    
    var body: some View {
        NavigationView {
            List{
                ForEach(searchResults, id: \.self) { hikings in
                    NavigationLink(destination: Text(hikings)) {
                        Image(hikings)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Text(hikings)
                    }
                }
            }
            .navigationTitle("Hiking🥾")
            .searchable(text: $seachText)
        }
    }
    
    var searchResults: [String] {
        if seachText.isEmpty {
            return hiking
        } else {
            return hiking.filter { $0.contains(seachText)}
        }
        
    }
    
}

#Preview {
    HikingList()
}
