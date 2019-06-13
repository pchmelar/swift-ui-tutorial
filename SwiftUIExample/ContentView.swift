//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
		Text("Hello world")
		.padding()
		.foregroundColor(.white)
		.background(LinearGradient(gradient: Gradient(colors: [.red, .blue, .black]), startPoint: .topLeading, endPoint: .bottomTrailing), cornerRadius: 0)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
