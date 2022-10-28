//
//  ContentView.swift
//  myBeats
//
//  Created by Kevin Duenas on 26/10/22.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        VStack {
            LottieView(name: "home", loopMode: .loop)
                        .frame(width: 250, height: 250)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
