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
                TextField("Start timestamp", text: $input1)
                TextField("End timestamp", text: $input2)
            }
            .padding()

            Button(action: {
                // Concatenate the strings from $input1 and $input2 and
                // update the value of $result when the button is pressed
                self.result = timeDelta(start: self.input1, end: self.input2)
            }) {
                Text("Calculate delta")
            }
            .padding()

            TextEditor(text: $result)
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
