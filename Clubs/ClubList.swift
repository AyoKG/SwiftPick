//
//  ClubList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct ClubList: View {
    @State private var searchText = ""
    var clubs = clubList
    
    var body: some View {
        NavigationView {
            List {
                ForEach (searchResults, id: \.self) { club in
                    NavigationLink(destination: Text(club)) {
                        Image(club)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        Text(club)
                    }
                }
            }
            .navigationTitle("Clubs🪩")
            .searchable(text: $searchText)
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return clubs
        } else {
            return clubs.filter { $0.contains(searchText) }
        }
    }
}

#Preview {
    ClubList()
}
