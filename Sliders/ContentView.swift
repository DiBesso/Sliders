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
                SliderView(sliderValue: $redSliderValue, color: .red)
                TextFieldView(sliderValue: $redSliderValue, value: $valueForRedSlider)
            }
            HStack {
                SliderView(sliderValue: $greenSliderValue, color: .green)
                TextFieldView(sliderValue: $greenSliderValue, value: $valueForGreenSlider)
            }
            HStack {
                SliderView(sliderValue: $blueSliderValue, color: .blue)
                TextFieldView(sliderValue: $blueSliderValue, value: $valueForBlueSlider)
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


