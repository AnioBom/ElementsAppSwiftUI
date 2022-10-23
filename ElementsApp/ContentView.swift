//
//  ContentView.swift
//  ElementsApp
//
//  Created by mac on 10/23/22.
//

import SwiftUI

struct ContentView: View {
    @State var tabViewColir: Color = .green
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Rectangle()
                    .foregroundColor(tabViewColir)
                    .frame(width: 300, height: 150)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                    .padding()
                LineWithSlider()
                LineWithSlider()
                LineWithSlider()
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
