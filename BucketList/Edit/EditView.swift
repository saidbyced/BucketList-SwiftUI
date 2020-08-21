//
//  EditView.swift
//  BucketList
//
//  Created by Chris Eadie on 20/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import SwiftUI
import MapKit

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var placemark: MKPointAnnotation
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Place name", text: $placemark.wrappedTitle)
                    TextField("Description", text: $placemark.wrappedSubtitle)
                }
            }
        .navigationBarTitle("Edit place")
        .navigationBarItems(trailing:
            Button(
                action: {
                    self.presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Text("Done")
                }
            )
        )
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(placemark: MKPointAnnotation.example)
    }
}
