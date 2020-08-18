//
//  BucketListView.swift
//  BucketList
//
//  Created by Chris Eadie on 17/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import SwiftUI

struct BucketListView: View {
    @ObservedObject private var authentication = Authentication()
    
    var body: some View {
        VStack {
            if authentication.successful {
                MapView()
                    .edgesIgnoringSafeArea(.all)
            } else {
                Text("Locked")
                    .font(.headline)
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
