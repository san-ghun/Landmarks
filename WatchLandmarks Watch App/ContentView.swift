//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Sanghun Park on 16.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
