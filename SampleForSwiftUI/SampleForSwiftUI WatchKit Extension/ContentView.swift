//
//  ContentView.swift
//  SampleForSwiftUI WatchKit Extension
//
//  Created by tichise on 2021年7月25日 21/07/25.
//

import SwiftUI
import TILogger

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding().onAppear() {
                TILogger().info("log")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
