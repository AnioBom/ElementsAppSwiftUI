//
//  ButtonAlert.swift
//  ElementsApp
//
//  Created by mac on 10/24/22.
//

import SwiftUI

struct ButtonAlert: View {
    @State private var alertPresented = false
    let buttonAction: () -> ()
    
    var body: some View {
        Button("Done", action: buttonAction)
            .buttonStyle(.bordered)
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(15)
            .alert("Wrong format", isPresented: $alertPresented) {
                Button("OK", action: {})
            } message: {
                Text("Enter number")
            }
    }
        
}

struct ButtonAlert_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAlert(buttonAction: {})
    }
}
