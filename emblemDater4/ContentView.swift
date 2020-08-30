//
//  ContentView.swift
//  emblemDater4
//
//  Created by Ricardo Herrera Petit on 8/2/20.
//  Copyright © 2020 Ricardo Herrera Petit. All rights reserved.
//

import SwiftUI
import EmblemDateCalculator

struct ContentView: View {
    @State private var nextDateTextFieldValue = "Please press Get Date"
    @State private var emblemIndex = Emblem.Fighter
    var body: some View {
        NavigationView {
            Form {
                Section {
                           Picker(selection: $emblemIndex, label: Text("Emblem")) {
                            ForEach(Emblem.allCases, id: \.self) {
                                Text($0.rawValue)
                                      }
                                  }
                       }
                Section {
                    Button(action: {
                        //Write action here
                        self.nextDateTextFieldValue = "Button was pressed"
                    }) {
                        Text("Get Date")
                    }
                }
                Section {
                    Text(self.nextDateTextFieldValue)
                }
            }.navigationBarTitle("Emblem Calculator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
