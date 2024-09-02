//
//  BarList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/19.
//

import SwiftUI

struct BarList: View {
    @State private var searchText = ""
    var bars = barList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { bar in
                    NavigationLink(destination: destinationView(for: bar)) {
                        HStack {
                            Image(bar)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            Text(bar)
                        }
                    }
                }
            }
            .navigationTitle("Bars🍻")
            .searchable(text: $searchText)
        }
        CommonBottomView()
    }

        
        @ViewBuilder
        private func destinationView(for bar: String) -> some View {
            if bar == "Barcadia" {
                BarcadiaView()
            } else {
                Text(bar)
            }
        }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return bars
        } else {
            return bars.filter { $0.contains(searchText) }
        }
    }
}


#Preview {
    BarList()
}
