//
//  ClubList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct ClubList: View {
    var clubs = clubList
    
    var body: some View {
        NavigationView {
            List {
                ForEach (clubs, id: \.self) { club in
                    NavigationLink(destination: Text(club)) {
                        Image(club)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        Text(club)
                    }
                }
                .navigationTitle("Clubs🪩")
            }
        }
    }
}

#Preview {
    ClubList()
}
