//
//  ContentView.swift
//  SwiftUIMapType
//
//  Created by MAC on 14/01/21.
//

import SwiftUI
import MapKit

struct MapViewUIKit: UIViewRepresentable {
    // 1.
    let region: MKCoordinateRegion
    let mapType : MKMapType
    
    // 2.
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(region, animated: false)
        mapView.mapType = mapType
        return mapView
    }
    
    // 3.
    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.mapType = mapType
    }
}


struct ContentView: View {
    // 1
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -23.5677666, longitude: -46.6487763) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    // 2
    @State private var mapType: MKMapType = .standard
        
    var body: some View {
        ZStack {
            // 3
            MapViewUIKit(region: region, mapType: mapType)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                // 4
                Picker("", selection: $mapType) {
                    Text("Padrão").tag(MKMapType.standard)
                    Text("Satelite").tag(MKMapType.satellite)
                    Text("Hibrido").tag(MKMapType.hybrid)
                }
                .pickerStyle(SegmentedPickerStyle())
                .offset(y: -40)
                .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
