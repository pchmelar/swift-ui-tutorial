//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct Animal: Identifiable {
	var id = UUID()
	var name: String
	var dangerous: Bool
}

struct AnimalRow: View {
	var animal: Animal
	
	var body: some View {
		Text("Animal: \(animal.name)")
	}
}

struct ContentView : View {
	let animals = [
		Animal(name: "Dog", dangerous: false),
		Animal(name: "Cat", dangerous: false),
		Animal(name: "Bear", dangerous: true)
	]
	
	var body: some View {
		List(animals) { animal in
			AnimalRow(animal: animal)
			if animal.dangerous {
				Text("☠️☠️☠️")
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
