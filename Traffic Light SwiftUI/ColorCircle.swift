//
//  ColorCircle.swift
//  Traffic Light SwiftUI
//
//  Created by Mikhail Bukhrashvili on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 8))
            .padding(.top)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .black, opacity: 0.4)
    }
}
