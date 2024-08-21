//
//  BarList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/19.
//

import SwiftUI

struct BarList: View {
    var bars = barList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(bars, id: \.self) { bar in
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
        }
    }

        
        @ViewBuilder
        private func destinationView(for bar: String) -> some View {
            if bar == "Barcadia" {
                BarcadiaView()
            } else {
                Text(bar)
            }
        }
}


#Preview {
    BarList()
}
