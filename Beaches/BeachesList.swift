//
//  BeachesList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct BeachesList: View {
    var beaches = beachList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(beaches, id: \.self) { beach in
                    NavigationLink(destination: Text(beach)) {
                        Text(beach)
                    }
                }
                .navigationTitle("Beaches🏖️")
            }
        }
        
    }
}

#Preview {
    BeachesList()
}
