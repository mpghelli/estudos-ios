//
//  AboutView.swift
//  SwiftUITabView
//
//  Created by MAC on 14/01/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Text("About View")
                .font(.largeTitle)
        }
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
