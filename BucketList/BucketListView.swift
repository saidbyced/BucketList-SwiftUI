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
    @State private var centerCoordinate = CLLocationCoordinate2D()
    @State private var locations = [MKPointAnnotation]()
    
    func addNewLocation(coordinate: CLLocationCoordinate2D, title: String) {
        let newLocation = MKPointAnnotation()
        newLocation.coordinate = coordinate
        newLocation.title = title
        
        self.locations.append(newLocation)
    }
    
    var body: some View {
        ZStack {
            MapView(centerCoordinate: $centerCoordinate, annotations: locations)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.accentColor.opacity(0.3))
                .frame(width: 22, height: 22)
            Circle()
                .fill(Color.accentColor.opacity(0.33))
                .frame(width: 2.2, height: 2.2)
            VStack {
                Spacer()
                HStack {
                    Button(
                        action: {
                            self.addNewLocation(coordinate: self.centerCoordinate, title: "Example location")
                        },
                        label: {
                            Image(systemName: "plus")
                        }
                    )
                        .padding()
                        .background(Color.primary.opacity(0.65))
                        .foregroundColor(.accentColor)
                        .font(.title)
                        .clipShape(Circle())
                        .padding(.bottom, 30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
