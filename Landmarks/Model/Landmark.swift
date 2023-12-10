//
//  Landmark.swift
//  Landmarks
//
//  Created by Muthulingam on 02/12/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var name: String
    var city: String
    var state: String
    var id: Int
    var isFeatured: Bool
    var isFavorite: Bool    
    var park: String
    
    var description: String
    
    var category: Category
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Codable, Hashable {
        var longitude: Double
        var latitude: Double
    }    
    
}
