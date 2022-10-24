//
//  LineWithSlider.swift
//  ElementsApp
//
//  Created by mac on 10/23/22.
//

import SwiftUI

struct LineWithSlider: View {
    let color: Color
    
    @Binding var value: CGFloat
    @State var numberTF = ""
    
    var body: some View {
        
        HStack {
            Text("0").foregroundColor(color)
            Slider(value: $value)
                .tint(color)
            TextField("255", text: $numberTF)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60, height: 30)
                .backgroundStyle(.white)
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 5))
            
        }.padding()
    }
}

struct LineWithSlider_Previews: PreviewProvider {
    static var previews: some View {
        LineWithSlider(color: .red, value: .constant(1))
    }
}
