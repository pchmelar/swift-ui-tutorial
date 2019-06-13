//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	var animals = ["Dog", "Cat", "Monkey", "Bear"]
	@State private var selectedAnimal = 0
	
	var body: some View {
		VStack {
			Picker(selection: $selectedAnimal, label: Text("Please choose an animal")) {
				ForEach(0 ..< animals.count) {
					Text(self.animals[$0])
				}
			}
			Text("You selected: \(animals[selectedAnimal])")
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
