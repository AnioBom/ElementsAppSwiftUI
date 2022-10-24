//
//  ContentView.swift
//  ElementsApp
//
//  Created by mac on 10/23/22.
//

import SwiftUI

struct ContentView: View {
    
    
    private let redView = Color(red: 249/255, green: 9/255, blue: 44/255)
    private let greenView = Color(red: 138/255, green: 241/255, blue: 1/255)
    private let blueView = Color(red: 70/255, green: 254/255, blue: 255/255)
    
    @State var redSlider: CGFloat = Double.random(in: 0...255)
    @State var greenSlider: CGFloat = Double.random(in: 0...255)
    @State var blueSlider: CGFloat = Double.random(in: 0...255)
    
    @State private var redTF = ""
    @State private var greenTF = ""
    @State private var blueTF = ""
    
    @State var tabViewColоr: Color = .green
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Color(
                    red: CGFloat(redSlider),
                    green: CGFloat(greenSlider),
                    blue: CGFloat(blueSlider)
                )
                .cornerRadius(20)
                .frame(width: 300, height: 150)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                .padding()
                LineWithSlider(color: redView, slideValue: $redSlider, numberTF: redTF)
                LineWithSlider(color: greenView, slideValue: $greenSlider, numberTF: greenTF)
                LineWithSlider(color: blueView, slideValue: $blueSlider, numberTF: blueTF)
                Spacer()
                ButtonAlert(buttonAction: {})
                Spacer()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
