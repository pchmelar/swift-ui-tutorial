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
		Text("CLUB MATE IS AWESOME")
		.font(.largeTitle)
		.foregroundColor(.blue)
		.background(
			Circle()
			.fill(Color.red)
			.frame(width: 200, height: 200)
			.clipped()
		)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
