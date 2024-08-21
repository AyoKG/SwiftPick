//
//  HikingList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct HikingList: View {
    var hiking = hikingList
    
    var body: some View {
        NavigationView {
            List{
                ForEach(hiking, id: \.self) { hikings in
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
        }
    }
}

#Preview {
    HikingList()
}
