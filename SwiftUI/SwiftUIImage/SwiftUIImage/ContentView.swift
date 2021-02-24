//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by MAC on 14/01/21.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Credit: Ricardo Gomez Angel")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Coleção de Outono")
                .font(.largeTitle)
            Spacer()
            Image("outono")
                .resizable()
                .scaledToFit()
                .overlay(ImageOverlay(), alignment: .bottomTrailing)
                
                  
                   

                
            Spacer()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
































