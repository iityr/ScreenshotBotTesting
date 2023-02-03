//
//  ContentView.swift
//  ScreenshotBotTesting
//
//  Created by Dev on 2/2/23.
//

import SwiftUI

struct ContentView<V: View>: View {
	var view: V
	var text: String
	var color: Color
	
	init(
		view: V,
		text: String,
		color: Color
	) {
		self.view = view
		self.text = text
		self.color = color
	}
	
    var body: some View {
		view
			.foregroundColor(self.color)
		
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
			Text(self.text)
				.foregroundColor(self.color)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(
			view: Circle(),
			text: "PREVIEW",
			color: .yellow
			
		)
    }
}
