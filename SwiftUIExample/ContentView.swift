//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	let colors: [Color] = [.red, .green, .blue]
	
    var body: some View {
		VStack {
			VStack(alignment: .center) {
				ForEach((1...10).reversed()) {
					Text("\($0)")
				}
				Text("Done!")
			}
			
			VStack {
				ForEach(colors.identified(by: \.self)) { color in
					Text(color.description.capitalized)
						.padding()
						.background(color)
				}
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
