//
//  Picture.swift
//  origin
//
//  Created by Edmond Phillips on 12/12/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Picture: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var artist: String
    var date: String
    var description: String
    var isFavorite: Bool
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

