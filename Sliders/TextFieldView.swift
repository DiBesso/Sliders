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
    @State private var text = ""
    @State private var alertPresented = false
    
    var body: some View {
         TextField("0", text: $text) {
            checkTextField()
        }
            .frame(width: 35)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.black)
                )
                .alert("Wrong format", isPresented: $alertPresented , actions: {}) {
                    Text ("Enter Double format")
                }
                .padding()
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
