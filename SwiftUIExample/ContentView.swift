//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 13/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	
	var dateFormatter: DateFormatter {
		let formatter = DateFormatter()
		formatter.dateStyle = .long
		return formatter
	}
	
	@State var birthDate = Date()
	
	var body: some View {
		VStack {
			DatePicker(
				$birthDate,
				maximumDate: Date(),
				displayedComponents: .date
			)
			
			Text("Date is \(birthDate, formatter: dateFormatter)")
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
