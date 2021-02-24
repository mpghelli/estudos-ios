//
//  ContentView.swift
//  SwiftUIGBox
//
//  Created by MAC on 14/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            // 1.
            GroupBox(label: Label("Batimento Cardiaco", systemImage: "heart.fill").font(.largeTitle)) {
                Text("65 BPM").font(.title)
            }
            // 2.
            GroupBox {
                Text("Informe seu nome").font(.title)
                TextField("nome", text: $name)
            }
            Spacer()
        }.padding(.horizontal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
