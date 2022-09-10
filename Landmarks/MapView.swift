//
//  MapView.swift
//  Landmarks
//
//  Created by Sanghun Park on 10.09.22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // Establish a source of truth for data
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -166.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        // By prefixing a state variable with `$`, pass a binding, which is like a reference to the underlying value.
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
