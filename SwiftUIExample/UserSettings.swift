//
//  UserSettings.swift
//  SwiftUIExample
//
//  Created by Petr Chmelar on 14/06/2019.
//  Copyright © 2019 Qest. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: BindableObject {
	
	// Publisher with Void value type and Never error
	var didChange = PassthroughSubject<Void, Never>()
	
	var score = 0 {
		didSet {
			// Send Void into publisher
			didChange.send(())
		}
	}
}
