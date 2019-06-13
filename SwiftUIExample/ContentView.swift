//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var name: String = "John"
	
    var body: some View {
		VStack {
			TextField($name)
				.textFieldStyle(.roundedBorder)
			Text("Hello, \(name)!")
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
