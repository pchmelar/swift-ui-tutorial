//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State var showDetails = false
	
    var body: some View {
		VStack {
			Button(action: {
				self.showDetails.toggle()
			}) {
				Image("mate")
			}
			
			if showDetails {
				Text("Club Mate is awesome!")
					.font(.largeTitle)
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
