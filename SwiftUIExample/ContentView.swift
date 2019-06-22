//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var showingSheet = false
	
	var sheet: ActionSheet {
		ActionSheet(title: Text("ActionSheet"),
					message: Text("Available actions below"),
					buttons: [.default(Text("Action"), onTrigger: { self.showingSheet = false })])
	}
	
	var body: some View {
		Button(action: {
			self.showingSheet = true
		}) {
			Text("Present action sheet")
		}
		.presentation(showingSheet ? sheet : nil)
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
