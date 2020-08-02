//
//  ContentView.swift
//  emblemDater4
//
//  Created by Ricardo Herrera Petit on 8/2/20.
//  Copyright © 2020 Ricardo Herrera Petit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var emblemIndex = 0
    var body: some View {
        Picker(selection: $emblemIndex, label: Text("Emblem")) {
            Text("Figther")
            Text("Support")
            Text("Marksman")
            Text("Tank")
            Text("Jungle")
            Text("Assassin")
            Text("Mage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
