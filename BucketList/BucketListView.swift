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
    
    var body: some View {
        ZStack {
            MapView(centerCoordinate: $centerCoordinate)
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
                            // TODO: Create a new location
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
