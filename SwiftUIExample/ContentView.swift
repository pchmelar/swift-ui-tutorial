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
		ZStack() {
			Image("mate")
			Text("CLUB MATE")
				.font(.largeTitle)
				.background(Color.black)
				.foregroundColor(.yellow)
		}
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
