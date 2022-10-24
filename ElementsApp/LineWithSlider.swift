//
//  LineWithSlider.swift
//  ElementsApp
//
//  Created by mac on 10/23/22.
//

import SwiftUI

struct LineWithSlider: View {
    let color: Color
    
    @Binding var slideValue: CGFloat
    @State private var numberTF = ""
    
    var body: some View {
        
        HStack {
            Text(lround(slideValue).formatted())
            Slider(value: $slideValue)
                .tint(color)
            TextField("255", text: $numberTF)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60, height: 30)
                .backgroundStyle(.white)
                .foregroundColor(.black)
                .cornerRadius(10)
            
        }.padding()
    }
}

struct LineWithSlider_Previews: PreviewProvider {
    static var previews: some View {
        LineWithSlider(color: .red, slideValue: .constant(0.5))
    }
}

