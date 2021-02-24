//
//  ContentView.swift
//  SwiftUIVIdeoPlayer
//
//  Created by MAC on 14/01/21.
//

import SwiftUI
import AVKit


struct ContentView: View {
    private let player = AVPlayer(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!)
    
    var body: some View {
        
        VStack{
            
            Text("Teste")
            Spacer()
        VideoPlayer(player: player)
            
            .onAppear() {
                player.play()
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
