//
//  SweetiesMenuPopupView.swift
//  Vibely
//
//  Created by Kgosi Rasebitse on 2025/07/10.
//

import SwiftUI

struct SweetiesMenuPopupView: View {
    @Binding var showingMenu: Bool
        
        var body: some View {
            ZStack {
                if showingMenu {
                    // Background overlay with dark blue tint
                    Color.black.opacity(0.6)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                showingMenu = false
                            }
                        }
                    
                    // Popup content
                    VStack(spacing: 0) {
                        // Header with Sweeties brand colors
                        HStack {
                            Text("Sweeties Menu & Services")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button(action: {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    showingMenu = false
                                }
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    Color(red: 0.95, green: 0.4, blue: 0.45), // Coral red from logo
                                    Color(red: 0.92, green: 0.35, blue: 0.4)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        
                        // Golden yellow accent divider
                        Rectangle()
                            .fill(Color(red: 1.0, green: 0.8, blue: 0.0)) // Golden yellow from logo
                            .frame(height: 4)
                        
                        // Menu content with cream background
                        ScrollView {
                            VStack(spacing: 20) {
                                MenuSection(
                                    title: "On Tap",
                                    items: [
                                        "JACK BLACK CHERRY ALE - R50",
                                        "SA PILSNER: RUSTIC LAGER - R45",
                                        "BLACK LABEL - R45",
                                        "TROPICAL PARADE IPA - R60"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "WINES & MCC",
                                    items: [
                                        "Snow Mountain Cabernet Sauvignon - R40/R130",
                                        "Snow Mountain Sauvignon Blanc - R40/R130",
                                        "Snow Mountain Rose - R40/R130",
                                        "Vonkel Chenin Blanc Sparkling - R180"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "SPIRITS & LIQUEURS",
                                    items: [
                                        "Jagermeister - R35",
                                        "Espolon Tequila Resposado Gold - R45",
                                        "Olmeca Reposado Gold - R35",
                                        "Olmeca Reposado Silver - R40",
                                        "Jameson Irish Whisky - R25",
                                        "Jack Daniels Whisky - R35",
                                        "Smirnoff Vodka - R25",
                                        "Klipdrift Brandy - R25",
                                        "Gordons London Dry Gin - R25 ",
                                        "Capt.Morgan Jamaica Rum - R25",
                                        "Capt.Morgan Spiced Gold Rum - R25",
                                        "Amarula Cream & Marula Spirit - R30"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "BEERS & CIDERS",
                                    items: [
                                        "Black Label Dumpy - R35 ",
                                        "Castle Lite - R35",
                                        "Heinken 0.0% alc - R35",
                                        "Windhoek Draught - R45",
                                        "Heinken - R40",
                                        "Corona Extra - R40",
                                        "Savannah Dry - R40",
                                        "Savannah 0.0 - R35",
                                        "Flying Fish Pressed Lemon - R35",
                                        "Hunters Dry - R35",
                                        "Loxtonia Cripsy Apple Cider - R45",
                                        "Loxtonia Sundowner Baobob Cider - R45",
                                        "Brutal Fruit Ruby Apple - R30",
                                        "Brutal Fruit Litchi - R30",
                                        "Vodka & Iced Tea Raspberry - R50",
                                        "Vodka & Iced Tea Fynbos - R50"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "SPECIALS",
                                    items: [
                                        "DBL Vodka & Red Bull - R70",
                                        "DBL Brandy & Coke - R50",
                                        "DBL Gin & Tonic - R60",
                                        "DBL Rum & Coke - R60",
                                        "Mimosa - R35"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "COCKTAILS",
                                    items: [
                                        "Aperol Spritz - R70"
                                    ]
                                )
                                
                                MenuSection(
                                    title: "MIXERS/NON-ALCOHOLIC",
                                    items: [
                                        "Appletizer - R35",
                                        "Coke - R20",
                                        "Coke Zero - R20",
                                        "Red Bull Original - R30",
                                        "Red Bull Coco Berry - R30",
                                        "Ginger Ale - R20",
                                        "Sprite - R20",
                                        "Fanta - R20",
                                        "Tonic - R20",
                                        "Soda - R20",
                                        "Dry Lemon - R20",
                                        "Lemonade - R20",
                                        "Lime/Passion Fruit Cordial - R5",
                                        "Aquabella Still Water 1L - R25",
                                        "Aquabella Still Water 500ml - R20",
                                        "Aquabella Sparkling Water 500ml - R20 "
                                    ]
                                )
                            }
                            .padding()
                        }
                        .background(Color(red: 0.98, green: 0.95, blue: 0.88)) // Warm cream background
                    }
                    .frame(maxWidth: .infinity, maxHeight: 500)
                    .background(Color(red: 0.98, green: 0.95, blue: 0.88))
                    .cornerRadius(20)
                    .shadow(color: Color(red: 0.95, green: 0.4, blue: 0.45).opacity(0.3), radius: 20, x: 0, y: 10)
                    .padding(.horizontal, 30)
                    .transition(.asymmetric(
                        insertion: .scale(scale: 0.8).combined(with: .opacity),
                        removal: .scale(scale: 0.8).combined(with: .opacity)
                    ))
                }
            }
        }
    }

    struct MenuSection: View {
        let title: String
        let items: [String]
        
        var body: some View {
            VStack(alignment: .leading, spacing: 12) {
                // Section title with blue background and golden accent
                HStack {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Circle()
                        .fill(Color(red: 1.0, green: 0.8, blue: 0.0))
                        .frame(width: 10, height: 10)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.2, green: 0.4, blue: 0.8), // Rich blue
                            Color(red: 0.15, green: 0.35, blue: 0.75)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(8)
                
                // Menu items
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(items, id: \.self) { item in
                        HStack {
                            // Coral red bullet point matching logo
                            Circle()
                                .fill(Color(red: 0.95, green: 0.4, blue: 0.45))
                                .frame(width: 6, height: 6)
                            
                            Text(item)
                                .font(.body)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 4)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color(red: 0.2, green: 0.4, blue: 0.8).opacity(0.15), radius: 4, x: 0, y: 2)
        }
    }


#Preview {
    SweetiesMenuPopupView(showingMenu: .constant(true))
}
