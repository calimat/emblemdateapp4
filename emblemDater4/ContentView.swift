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
                    }) {
                        Text("Get Date")
                    }
                }
                Section {
                    Text("Please press Get Date")
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
