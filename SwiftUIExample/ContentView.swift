//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello WorldHello WorldHello WorldHello WorldHello WorldHello World")
			.lineLimit(nil)
			.truncationMode(.middle)
			.font(.largeTitle)
			.multilineTextAlignment(.center)
			.foregroundColor(.red)
			.background(Color.gray)
			.lineSpacing(25)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
