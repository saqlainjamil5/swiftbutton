//
//  pressable button.swift
//  swiftbutton
//
//  Created by Saqlain Jamil on 15/07/2024.
//

import SwiftUI

struct LoadingButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(1.4)
                .padding(.trailing, 20)
                .frame(width: 50)
                .tint(.white) 
            configuration.label
        }
        .padding()
        .background(configuration.isPressed ? Color.gray : Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
        .scaleEffect(configuration.isPressed ? 0.6 : 1.2)
        .shadow(color: Color.blue.opacity(0.8), radius: 1, x: 0, y: 8) 
        .animation(.easeInOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct LoadingContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Button pressed!")
            }) {
                Text("Loading...")
                    .font(.headline)
            }
            .buttonStyle(LoadingButtonStyle())
        }
        .padding()
    }
}

#Preview {
    LoadingContentView()
}
