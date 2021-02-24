//
//  ContentView.swift
//  SwiftUIStackView
//
//  Created by MAC on 13/01/21.
//

import SwiftUI

/*struct ContentView: View {
    @State var textToUpdate: String = "Sobrescrever!"
    var body: some View {
        VStack(alignment: .leading, spacing: 50){
            Button(<#LocalizedStringKey#>, action: {
                            self.textToUpdate = "I've been udpated!"
                        })
            Text("Olá")
            Text("SwiftUI")
                .padding()
        }
        Text(textToUpdate)
        .font(.largeTitle)
       /* HStack(spacing: 20) {
                    
                    Text("iMac")
                    Text("iPad")
                    Text("iPhone")
                    Text("Watch")
                }*/
                //.font(.largeTitle)
            }

    
}*/

class ExternalModel: ObservableObject {
    @Published var textToUpdate: String = "Update me!"
    func registerRequest() {
        // other functionality
        textToUpdate = "I've been updated!"
    }
}

struct ContentView: View {
    @ObservedObject var viewModel: ExternalModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50){
            Button(<#LocalizedStringKey#>, action: {
                            self.viewModel.registerRequest()
                        })
            
            Text("Olá")
            Text("SwiftUI")
                .padding()
        }
        Text(self.viewModel.textToUpdate)
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
