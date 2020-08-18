//
//  BucketListView.swift
//  BucketList
//
//  Created by Chris Eadie on 17/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import SwiftUI
import MapKit

struct BucketListView: View {
    @ObservedObject private var authentication = Authentication()
    @State private var centerCoordinate = CLLocationCoordinate2D()
    
    var body: some View {
        VStack {
            if authentication.successful {
                ZStack {
                    MapView(centerCoordinate: $centerCoordinate)
                        .edgesIgnoringSafeArea(.all)
                    Circle()
                        .fill(Color.blue)
                        .opacity(0.3)
                        .frame(width: 22, height: 22)
                    Circle()
                        .fill(Color.blue)
                        .opacity(0.6)
                        .frame(width: 3, height: 3)
                }
            } else {
                VStack {
                    Text("Locked")
                        .font(.headline)
                }
            }
        }
        .onAppear(perform: authentication.attempt)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
