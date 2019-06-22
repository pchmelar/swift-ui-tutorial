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
		NavigationView {
			Text("This is a great app")
				.navigationBarTitle(Text("Welcome"), displayMode: .inline)
				.navigationBarItems(trailing:
					Button(action: {
						print("Help tapped!")
					}) {
						Text("Help")
				})
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
