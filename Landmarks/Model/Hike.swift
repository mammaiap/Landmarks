//
//  Hike.swift
//  Landmarks
//
//  Created by Muthulingam on 07/12/23.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
    static var formatter = LengthFormatter()
        
    var distanceText: String {
        Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    
    
}
