//
//  ProfileView.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/08/27.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Edit Profile")
                        .modifier(CustomTextM(fontName: "Pacifico-Regular",
                                              fontSize: 40,
                                              fontColor: .cyan))
                        .padding(.trailing, 120)
                        .padding(.top, 30)
                    
                    ZStack {
                        Image("LogoImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140)
                            .clipShape(Circle())
                        
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Image(systemName: "camera.fill")
                                    .foregroundColor(.white)
                            )
                            .offset(x: 40, y: 50)
                    }
                    .padding(.top, 30)
                    
                    VStack(spacing: 30) {
                        ProfileDetailRow(title: "Username", value: "Kgosi Rasebitse")
                        ProfileDetailRow(title: "Email", value: "kgosi.rasebitse240@gmail.com")
                        ProfileDetailRow(title: "Phone", value: "+27 71 568 1369")
                        ProfileDetailRow(title: "Date of birth", value: "22/04/2003")
                        ProfileDetailRow(title: "Address", value: "8 Fleming road wynberg Cape Town")
                        Color(.systemBackground)
                    }
                    .padding()
                    
                }
                .padding(.top)
            }
            .navigationBarHidden(true)
            
            
        }
    }
    
    struct ProfileDetailRow: View {
        var title: String
        var value: String

        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(value)
                        .font(.subheadline)
//                        .foregroundColor(.black)
                }
                Divider()
            }
        }
    }
}


#Preview {
    ProfileView()
}
