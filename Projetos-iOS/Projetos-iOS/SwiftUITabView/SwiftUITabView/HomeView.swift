//
//  HomeView.swift
//  SwiftUITabView
//
//  Created by MAC on 14/01/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.yellow
            .edgesIgnoringSafeArea(.all)
            Text("Home View")
                .font(.largeTitle)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
