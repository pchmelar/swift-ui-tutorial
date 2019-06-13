//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	@State private var scale: Length = 0.1
	
	var body: some View {
		Image("mate")
			.scaleEffect(scale)
			.gesture(
				TapGesture()
					.onEnded { _ in
						self.scale += 0.1
					}
			)
			.gesture(
				LongPressGesture()
					.onEnded { _ in
						self.scale -= 0.1
					}
			)
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
