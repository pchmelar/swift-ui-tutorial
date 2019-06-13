//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	static let taskDateFormat: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .long
		return formatter
	}()
	
	var dueDate = Date()
	
    var body: some View {
		Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
