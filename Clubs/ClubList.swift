//
//  ClubList.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/20.
//

import SwiftUI

struct ClubList: View {
    @State private var searchText = ""
    var clubs = ["Blondies", "Boogie", "Club 169", "Club Paradise", "Drama","The waiting room", "Your's Truly"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { club in
                    NavigationLink(destination: destinationView(for: club)) {
                        HStack {
                            Image(club)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            Text(club)
                        }
                    }
                }
            }
            .navigationTitle("Clubs🪩")
            .searchable(text: $searchText)
        }
    }

    @ViewBuilder
    private func destinationView(for club: String) -> some View {
        switch club {
        case "Blondies":
            BlondiePage()
        case "Boogie":
            BoogieView()
        case "Club 169":
            Club169View()
        case "Club Paradise":
            ClubParadiseView()
        case "Drama":
            DramaView()
        case "The waiting room":
            WaitingRoomPage()
        case "Your's Truly":
            YTPage()
        case "HALO":
            HALOView()
        default:
            DefaultClubView(clubName: club)
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return clubs
        } else {
            return clubs.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

struct DefaultClubView: View {
    let clubName: String
    
    var body: some View {
        Text("Welcome to \(clubName)!")
    }
}

#Preview {
    ClubList()
}

