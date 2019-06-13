//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var showGreeting = true
	
    var body: some View {
		VStack {
			Toggle(isOn: $showGreeting) {
				Text("Show welcome message")
			}.padding()
			
			if showGreeting {
				Text("Club Mate!")
			}
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
