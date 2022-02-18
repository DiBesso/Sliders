//
//  ContentView.swift
//  Sliders
//
//  Created by Дмитрий Бессонов on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...1)
    @State private var greenSliderValue = Double.random(in: 0...1)
    @State private var blueSliderValue = Double.random(in: 0...1)
    @State private var valueForRedSlider = ""
    @State private var valueForGreenSlider = ""
    @State private var valueForBlueSlider = ""
    
    var body: some View {
        VStack (spacing: 40) {
            RoundedRectangleView(color: Color(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, opacity: 1))
                .padding()
            HStack {
                SliderView(sliderValue: $redSliderValue)
                TextFieldView(value: $valueForRedSlider, color: .red)
            }
            HStack {
                SliderView(sliderValue: $greenSliderValue)
                TextFieldView(value: $valueForGreenSlider, color: .green)
            }
            HStack {
                SliderView(sliderValue: $blueSliderValue)
                TextFieldView(value: $valueForBlueSlider, color: .blue)
            }
            Spacer()
            }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderView: View {
   @Binding var sliderValue: Double
    
            var body: some View {
                HStack {
                    Text("\(sliderValue, specifier: "%.2f")")
                        .frame(width: 40)
                         Slider(value: $sliderValue, in: 0...1, step: 0.01)
                        
                }
                .padding(.horizontal)
            }
        }

struct TextFieldView: View {
    @Binding var value: String
    let color: Color
    
    var body: some View {
        TextField("0", text: $value)
            .frame(width: 35)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.red)
                )

    }
}
