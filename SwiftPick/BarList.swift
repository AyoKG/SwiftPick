//
//  BarList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/19.
//

import SwiftUI

struct BarList: View {
    @State private var searchText = ""
    var bars = ["Barcadia", "Stones", "Marvel", "Rascals", "Another Bar"] // Example bar names
    
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
    }

    // Determine the destination view for a given bar
    @ViewBuilder
    private func destinationView(for bar: String) -> some View {
        switch bar {
        case "Barcadia":
            BarcadiaView()
        case "Stones":
            StonesView()
        case "Marvel":
            MarvelView()
        case "Rascals":
            RascalsView()
        default:
            DefaultBarView(barName: bar) // Generic fallback view
        }
    }
    
    // Search functionality
    var searchResults: [String] {
        if searchText.isEmpty {
            return bars
        } else {
            return bars.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

struct DefaultBarView: View {
    let barName: String
    
    var body: some View {
        Text("Welcome to \(barName)!")
    }
}

#Preview {
    BarList()
}
