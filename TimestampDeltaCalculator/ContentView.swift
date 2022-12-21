//
//  ContentView.swift
//  TimestampDeltaCalculator
//
//  Created by dimitar on 21/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var input1 = ""
    @State private var input2 = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Input 1", text: $input1)
                TextField("Input 2", text: $input2)
            }
            .padding()

            Button(action: {
                // action to be performed when button is pressed
            }) {
                Text("Button")
            }
            .padding()

            Text("Result")
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
