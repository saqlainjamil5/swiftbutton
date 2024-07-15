# Swift Buttons

This repository contains three custom button implementations in SwiftUI, demonstrating different styles and animations for buttons.

## Table of Contents
- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Overview

### 1. **ContentView**
A button that toggles its background color between yellow and dark golden when pressed.

![ContentView Button]

https://github.com/user-attachments/assets/62cb2713-dda6-4171-93ea-3ea2e3f90db2


### 2. **PressableButtonStyle**
A button that changes its background color and scales when pressed, providing a pressed effect.

![PressableButtonStyle Button]

https://github.com/user-attachments/assets/d02e9c42-7162-4ef2-b9e6-5c7c680fa4da

### 3. **LoadingButtonStyle**
A button with a loading indicator (ProgressView) that changes its background color and scales when pressed.

![LoadingButtonStyle Button]

https://github.com/user-attachments/assets/d2c58be1-7895-4b51-a336-b8b54f87db8b

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/saqlainjamil5/swiftbutton.git
    ```
2. Open the project in Xcode:
    ```sh
    cd swiftbutton
    open swiftbutton.xcodeproj
    ```

## Usage

### 1. **ContentView**
The `ContentView` contains a button that toggles its color between yellow and dark golden.

```swift
import SwiftUI

struct ContentView: View {
    @State private var buttonColor: Color = .yellow
    
    var body: some View {
        VStack {
            Button(action: {
                buttonColor = (buttonColor == .yellow) ? Color(red: 184/255, green: 134/255, blue: 11/255) : .yellow
            }) {
                Text(" Press Me ")
                    .fontWeight(.bold)
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
```
```swift

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

struct PresentableContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Button pressed!")
            }) {
                Text(" Press Me ")
                    .font(.headline)
            }
            .buttonStyle(PressableButtonStyle())
        }
        .padding()
    }
}

#Preview {
    PresentableContentView()
}
```
```swift
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
```
### Contributing
Contributions are welcome! Please fork the repository and submit a pull request.


