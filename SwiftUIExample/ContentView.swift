//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: BindableObject {
	
	// Publisher with Void value type and Never error
	var didChange = PassthroughSubject<Void, Never>()
	
	var score = 0 {
		didSet {
			// Send Void into publisher
			didChange.send(())
		}
	}
}

struct ContentView : View {
	
	@ObjectBinding var settings = UserSettings()
	
	var body: some View {
		VStack {
			Text("Your score is \(settings.score)")
			Button(action: {
				self.settings.score += 1
			}) {
				Text("Increase score")
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
