//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	var colors = ["Red", "Green", "Blue"]
	
	@State private var favoriteColor = 0
	
	var body: some View {
		VStack {
			SegmentedControl(selection: $favoriteColor) {
				ForEach(0 ..< colors.count) { index in
					Text(self.colors[index])
				}
			}
			
			Text("Value: \(colors[favoriteColor])")
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
