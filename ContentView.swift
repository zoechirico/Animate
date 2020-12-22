//
//  ContentView.swift
//  Tester_0
//
//  Created by Zoe Chirico on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
        )
        .animation(
            Animation.easeInOut(duration: 1)
                .repeatForever(autoreverses: true)
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
