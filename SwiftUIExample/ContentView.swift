//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var celsius: Double = 0
	
    var body: some View {
		VStack {
			Slider(value: $celsius, from: -100, through: 100, by: 0.1)
			Text("\(celsius) Celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
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
