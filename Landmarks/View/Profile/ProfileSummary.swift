//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Muthulingam on 09/12/23.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10.0) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notification: \(profile.prefersNotification ? "ON" : "OFF")")
                Text("Seasonal Photo: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView(.horizontal){
                        HStack{
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.50)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
