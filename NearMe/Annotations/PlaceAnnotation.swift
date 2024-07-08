//
//  PlaceAnnotation.swift
//  NearMe
//
//  Created by Luca Selvaggio on 05/07/24.
//

import Foundation
import MapKit

class PlaceAnnotation: MKPointAnnotation {
    
    let mapItem: MKMapItem
    let id = UUID()
    var isSelected: Bool = false
    
    init(mapItem: MKMapItem) {
        self.mapItem = mapItem
        super.init()
        self.coordinate = mapItem.placemark.coordinate          // coordinate of the found place
    }
    
    // expose properties below
    var name: String {
        mapItem.name ?? ""
    }
    
    var phone: String {
        mapItem.phoneNumber ?? ""
    }
    
    var address: String {
        "\(mapItem.placemark.subThoroughfare ?? "") \(mapItem.placemark.thoroughfare ?? "") \(mapItem.placemark.locality ?? "") \(mapItem.placemark.countryCode ?? "")"
    }
    
    var location: CLLocation {
        mapItem.placemark.location ?? CLLocation.default        // provide default location if item location is not found
    }
}
