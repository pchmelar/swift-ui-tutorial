//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State private var tapped = false
	
	var body: some View {
		VStack {
			Image("mate")
				.tapAction(count: 2) {
					self.tapped = !self.tapped
				}
			if tapped {
				Text("Club Mate is Awesome!")
					.font(.largeTitle)
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
