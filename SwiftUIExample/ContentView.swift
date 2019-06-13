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
		NavigationView {
			NavigationButton(destination: DetailView()) {
				Text("Club Mate")
			}
		}.onAppear {
			print("ContentView appeared!")
		}.onDisappear {
			print("ContentView disappeared!")
		}
	}
}

struct DetailView : View {
	var body: some View {
		VStack {
			Text("Club Mate is Awesome!")
		}.onAppear {
			print("DetailView appeared!")
		}.onDisappear {
			print("DetailView disappeared!")
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
