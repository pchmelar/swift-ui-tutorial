//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@EnvironmentObject var settings: UserSettings
	
	var body: some View {
		NavigationView {
			VStack {
				// A button that writes to the environment settings
				Button(action: {
					self.settings.score += 1
				}) {
					Text("Increase score")
				}
				
				NavigationButton(destination: DetailView()) {
					Text("Show score")
				}
			}
		}
	}
}

struct DetailView: View {
	
	@EnvironmentObject var settings: UserSettings
	
	var body: some View {
		// A text view that reads from the environment settings
		Text("Score: \(settings.score)")
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
