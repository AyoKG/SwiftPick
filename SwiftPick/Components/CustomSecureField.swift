//
//  CustomSecureField.swift
//  SwiftPick
//
//  Created by Kgosi Rasebitse on 2024/04/16.
//

import SwiftUI

struct CustomSecureField: View {
    
    var placeholder: Text
    var fontName: String
    var fontSize: CGFloat
    var fontColor: Color
    
    
    @Binding var password: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if password.isEmpty { placeholder.modifier(CustomTextM(fontName: fontName, fontSize: fontSize, fontColor: fontColor)) }
            SecureField("", text: $password, onCommit: commit)
                .foregroundColor(.black)
        }
    }
}


