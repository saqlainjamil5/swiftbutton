//
//  ContentView.swift
//  swiftbutton
//
//  Created by Saqlain Jamil on 15/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonColor: Color = .yellow
    
    var body: some View {
        VStack {
            Button(action: {
                // Toggle the button color between yellow and dark golden
                buttonColor = (buttonColor == .yellow) ? Color(red: 184/255, green: 134/255, blue: 11/255) : .yellow
            }) {
                Text(" Press Me                  ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(buttonColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .font(.headline)
                    .frame(width: 500, height: 50)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
