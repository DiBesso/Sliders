//
//  RoundedRectangleView.swift
//  Sliders
//
//  Created by Дмитрий Бессонов on 18.02.2022.
//

import SwiftUI

struct RoundedRectangleView: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 250, height: 150)
            .foregroundColor(color)

    }
}

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleView(color: Color(red: 0.3, green: 0.5, blue: 0.9, opacity: 1))
    }
}

