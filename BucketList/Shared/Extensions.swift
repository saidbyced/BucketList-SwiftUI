//
//  Extensions.swift
//  BucketList
//
//  Created by Chris Eadie on 20/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import Foundation
import MapKit

extension MKPointAnnotation: ObservableObject {
    static var example: MKPointAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = "London"
        annotation.subtitle = "Home to the 2012 Summer Olympics"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: -0.13)
        
        return annotation
    }
    
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown"
        }
        set {
            title = newValue
        }
    }
    
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "No information provided."
        }
        set {
            self.subtitle = newValue
        }
    }
}
