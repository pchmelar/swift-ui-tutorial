//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	// What if we have to return mismatched types?
	
	// First approach, worse readability but better performance
    var body: some View {
		Group {
			if Bool.random() {
				Image("mate")
			} else {
				Text("Try again :(")
			}
		}
    }
	
	// Second approach, better readability but worse performance
//	var body: AnyView {
//		if Bool.random() {
//			return AnyView(Image("mate"))
//		} else {
//			return AnyView(Text("Better luck next time"))
//		}
//	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
