//
//  LineWithSlider.swift
//  ElementsApp
//
//  Created by mac on 10/23/22.
//

import SwiftUI

struct LineWithSlider: View {
    @State var value: Double = Double.random(in: 0...255)
    @State var someNumber = ""
    var body: some View {
        
        HStack {
            Text("0").foregroundColor(.black)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(.red)
                
                
            TextField("Enter you number", text: $someNumber)
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
        LineWithSlider()
    }
}
