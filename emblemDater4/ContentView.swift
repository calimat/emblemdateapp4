//
//  ContentView.swift
//  emblemDater4
//
//  Created by Ricardo Herrera Petit on 8/2/20.
//  Copyright © 2020 Ricardo Herrera Petit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emblems = ["Fighter", "Support", "Marksman", "Tank", "Jungle", "Assassin", "Mage" ]
    @State private var emblemIndex = 0
    var body: some View {
        Picker(selection: $emblemIndex, label: Text("Emblem")) {
            ForEach(0 ..< emblems.count) {
                Text(self.emblems[$0])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
