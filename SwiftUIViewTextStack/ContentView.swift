//
//  ContentView.swift
//  SwiftUIViewTextStack
//
//  Created by Agota Matyas on 03/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var text1 = "Hello Text 1"
    var text2 = "Hello Text 2"
    var text3 = "Hello Text 3"
    
    var body: some View {
        VStack() {
            HelloView(textString: text1, font: .title, foregroundColor: .blue)
            HStack (spacing: 50) {
                HelloView(textString: text2, font: .subheadline, foregroundColor: .yellow)
                HelloView(textString: text3, font: .subheadline, foregroundColor: .red)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HelloView: View {
    
    var textString: String
    var font: Font
    var foregroundColor: Color
    
    var body: some View {
        Text(textString)
            .font(font)
            .fontWeight(.bold)
            .foregroundColor(foregroundColor)
    }
}
