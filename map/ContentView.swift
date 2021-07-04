//
//  ContentView.swift
//  map
//
//  Created by calatinalper on 3.07.2021.
//

import SwiftUI
import MapKit

struct PlacesToVisit:Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center:
        CLLocationCoordinate2D(latitude: 38.423733, longitude: 27.142826),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    let annotations = [
        PlacesToVisit(name: "İzmir Antik Tiyatro", coordinate: CLLocationCoordinate2D(latitude: 37.936367, longitude: 27.345545)),
        PlacesToVisit(name: "İzmir Agora Açıkhava Müzesi", coordinate: CLLocationCoordinate2D(latitude: 38.41854, longitude: 27.13887)),
        PlacesToVisit(name: "İzmir Saint Polycarp Kilisesi", coordinate: CLLocationCoordinate2D(latitude: 38.42575, longitude: 27.13595))
    ]
    
        
    var body: some View {
        Map(coordinateRegion: $region,annotationItems:annotations){
            MapPin(coordinate: $0.coordinate)
            
        }
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


