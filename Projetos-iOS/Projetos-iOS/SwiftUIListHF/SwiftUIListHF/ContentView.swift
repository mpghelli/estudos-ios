//
//  ContentView.swift
//  SwiftUIListHF
//
//  Created by MAC on 14/01/21.
//

import SwiftUI

struct ContentView: View {
    // 1.
    
    let carrosItalianos = ["Fiat","Ferrari","Masserati"]
    let carrosJaponeses = ["Honda", "Mitsubishi", "Subaru"]
    let carrosTopNoBrasil = ["Opala", "Maverick", "Passat TS"]
    
    var body: some View {
        NavigationView {
            List {
                // 2.
                Section(header:
                            HStack{
                                Image(systemName: "car")
                                Text("Carros Italianos")
                            }
                    ){
                        ForEach(0 ..< carrosItalianos.count) {
                            Text(self.carrosItalianos[$0])
                        }
                    }
                Section(header:
                            HStack{
                                Image(systemName: "car")
                                Text("Carros Sensacionais No Brasil")
                            }
                    ){
                        ForEach(0 ..< carrosTopNoBrasil.count) {
                            Text(self.carrosTopNoBrasil[$0])
                        }
                    }
                // 3.
                Section(header:
                    HStack {
                        Image(systemName: "car")
                        Text("Carros Japoneses")
                    }
                // 4.
                , footer: Text("Uma pequena lista de carros e marcas sensacionais").font(.footnote))  {
                               ForEach(0 ..< carrosJaponeses.count) {
                                   Text(self.carrosJaponeses[$0])
                               }
                           }
            
            } .navigationBarTitle("Carros")
        }
           
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
