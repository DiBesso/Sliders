//
//  SliderView.swift
//  Sliders
//
//  Created by Дмитрий Бессонов on 19.02.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    let color: Color
    
            var body: some View {
                HStack {
                    Text("\(sliderValue, specifier: "%.2f")")
                        .frame(width: 45)
                         Slider(value: $sliderValue, in: 0...1, step: 0.01)
                        .colorMultiply(color)
                        
                }
                .padding(.horizontal)
            }
        }

