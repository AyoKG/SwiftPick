//
//  BeachesList.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2024/08/21.
//

import SwiftUI

struct BeachesList: View {
    @State private var searchText = ""
    var beaches = beachList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(seachReults, id: \.self) { beach in
                    NavigationLink(destination: Text(beach)) {
                        Text(beach)
                    }
                }
            }
            .navigationTitle("Beaches🏖️")
            .searchable(text: $searchText)
        }
    }
    
    var seachReults: [String] {
        if searchText.isEmpty {
            return beaches
        } else {
            return beaches.filter { $0.contains(searchText) }
        }
    }
    
}

#Preview {
    BeachesList()
}
