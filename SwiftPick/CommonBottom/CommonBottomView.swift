//
//  CommonBottomView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/22.
//

import SwiftUI

struct CommonBottomView: View {
    @State private var selectedTab: String = "Home"
    
    var body: some View {
        HStack {
            Spacer()
            
            TabBarItem(imageName: "house", title: "Home", isSelected: selectedTab == "Home") {
                selectedTab = "Home"
            }
            Spacer()
            
            TabBarItem(imageName: "magnifyingglass", title: "Search", isSelected: selectedTab == "Search") {
                selectedTab = "Search"
            }
            Spacer()
            
            TabBarItem(imageName: "heart", title: "Likes", isSelected: selectedTab == "Likes") {
                selectedTab = "Likes"
            }
            Spacer()
            
            TabBarItem(imageName: "person", title: "Profile", isSelected: selectedTab == "Profile") {
                selectedTab = "Profile"
            }
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.systemBackground))
                .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        )
        .frame(height: 60)
    }
}

struct TabBarItem: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 24)
                    .foregroundColor(isSelected ? .blue : .primary)
                
                Text(title)
                    .font(.caption)
                    .foregroundColor(isSelected ? .blue : .primary)
            }
        }
    }
}

#Preview {
    CommonBottomView()
}



