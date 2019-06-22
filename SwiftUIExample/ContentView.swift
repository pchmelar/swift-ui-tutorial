//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	@State var animals = ["Dog", "Cat", "Bear"]
	
	var body: some View {
		NavigationView {
			List {
				ForEach(animals.identified(by: \.self)) { animal in
					Text(animal)
				}.onDelete(perform: delete)
			}.navigationBarItems(trailing: EditButton())
		}
	}
	
	func delete(at offsets: IndexSet) {
		if let first = offsets.first {
			animals.remove(at: first)
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
