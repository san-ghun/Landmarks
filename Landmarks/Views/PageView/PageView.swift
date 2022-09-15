//
//  PageView.swift
//  Landmarks
//
//  Created by Sanghun Park on 14.09.22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
            Button {
                if currentPage == 2 {
                    currentPage = 0
                }
                else {
                    currentPage += 1
                }
            } label: {
                Label("Next", systemImage: "chevron.right.circle")
                    .labelStyle(.iconOnly)
                    .imageScale(.large)
                    .padding()
            }

        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
