//
//  StationAnnotation.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 14/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit
import MapKit

class StationAnnotation: NSObject, MKAnnotation {
    
    let station: StationDetail?
    let coordinate: CLLocationCoordinate2D
    
    init(station: StationDetail, coordinate: CLLocationCoordinate2D) {
        self.station = station
        self.coordinate = coordinate
        
        super.init()
    }
    
    var title: String? {
        return station?.startStationName
    }
}
