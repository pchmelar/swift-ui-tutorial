//
//  DetailView.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 22/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI

struct DetailView : View {
	
	var animal: Animal
	
	var body: some View {
		Text("\(animal.name) is an awesome animal!")
	}
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
	static var previews: some View {
		DetailView(animal: Animal(name: "Owl"))
	}
}
#endif
