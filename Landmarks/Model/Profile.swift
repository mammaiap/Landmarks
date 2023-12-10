//
//  Profile.swift
//  Landmarks
//
//  Created by Muthulingam on 09/12/23.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "muthu")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {
            rawValue
        }
        
    }
    
}
