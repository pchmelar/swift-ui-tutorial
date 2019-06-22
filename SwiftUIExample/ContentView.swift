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
	var body: some View {
		PresentationButton(Text("Present detail"), destination: DetailView(animal: Animal(name: "Dog")))
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
