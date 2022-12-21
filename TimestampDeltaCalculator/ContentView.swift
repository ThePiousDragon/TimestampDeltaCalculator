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
    @State private var result = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Input 1", text: $input1)
                TextField("Input 2", text: $input2)
            }
            .padding()

            Button(action: {
                // Concatenate the strings from $input1 and $input2 and
                // update the value of $result when the button is pressed
                self.result = self.input1 + self.input2
            }) {
                Text("Button")
            }
            .padding()

            Text(result)
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
