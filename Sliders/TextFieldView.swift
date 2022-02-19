//
//  TextFieldView.swift
//  Sliders
//
//  Created by Дмитрий Бессонов on 19.02.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var sliderValue: Double
    @Binding var value: String
    @State var text = ""
    @State var alertPresented = false
    var body: some View {
        VStack{ TextField("0", text: $text)
            .frame(width: 35)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.black)
                )

        Button("Done", action: checkTextField)
                .alert("Wrong format", isPresented: $alertPresented , actions: {}) {
                    Text ("Enter Double format")
                }
        }
    }
    
    private func checkTextField() {
        if let _ = Double(text) {
            value = text
            sliderValue = Double(text) ?? 0
            return
        }
        alertPresented.toggle()
        text = ""
        
    }
}
