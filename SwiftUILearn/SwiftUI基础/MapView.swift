//
//  MapView.swift
//  SwiftUILearn
//
//  Created by udc on 2020/4/2.
//  Copyright © 2020 udc. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
     
     func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
         
         let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
         let region = MKCoordinateRegion(center: coordinate, span: span)
         uiView.setRegion(region, animated: true)
     }
     
    
}

struct MapView_Previews: PreviewProvider {
    
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
