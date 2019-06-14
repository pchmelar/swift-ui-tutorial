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
}

struct AnimalRow: View {
	var animal: Animal
	
	var body: some View {
		Text("Animal: \(animal.name)")
	}
}

struct ContentView : View {
	let animals = [
		Animal(name: "Dog"),
		Animal(name: "Cat"),
		Animal(name: "Bear")
	]
	
	var body: some View {
		List(animals) { animal in
			AnimalRow(animal: animal)
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
