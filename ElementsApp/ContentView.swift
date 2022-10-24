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
    
    @State var redNumberTF: CGFloat = 1
    @State var greenNumberTF: CGFloat = 1
    @State var blueNumberTF: CGFloat = 1
    
    @State var tabViewColоr: Color = .green
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Color(
                    red: CGFloat(redNumberTF),
                    green: CGFloat(greenNumberTF),
                    blue: CGFloat(blueNumberTF)
                )
                    .cornerRadius(20)
                    .frame(width: 300, height: 150)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                    .padding()
                LineWithSlider(color: redView, slideValue: $redNumberTF)
                LineWithSlider(color: greenView, slideValue: $greenNumberTF)
                LineWithSlider(color: blueView, slideValue: $blueNumberTF)
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
