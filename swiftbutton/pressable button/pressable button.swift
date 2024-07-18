//
//  pressable button.swift
//  swiftbutton
//
//  Created by Saqlain Jamil on 15/07/2024.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.gray : Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.6 : 1.2)
            .shadow(color: Color.red.opacity(0.9), radius: 1, x: 0, y: 8)
            .animation(.easeInOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct PresentableContentView: View {  // Capitalized the struct name to follow Swift naming conventions
    var body: some View {
        VStack {
            Button(action: {
                print("Button pressed!")
            }) {
                Text("              Press Me                ")
                    .font(.headline)
            }
            .buttonStyle(PressableButtonStyle())
        }
        .padding()
    }
}

#Preview {
    PresentableContentView()  // Capitalized the struct name to follow Swift naming conventions
}
