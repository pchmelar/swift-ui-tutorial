//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var showingAlert = false
	
	var body: some View {
		Button(action: {
			self.showingAlert = true
		}) {
			Text("Destroy world")
		}
		.presentation($showingAlert) {
			Alert(title: Text("Destroy world"),
				  message: Text("This action is irreversible!"),
				  primaryButton: .destructive(Text("DESTROY!")) { print("World destroyed!") },
				  secondaryButton: .cancel())
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
