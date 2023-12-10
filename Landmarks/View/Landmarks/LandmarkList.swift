//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muthulingam on 03/12/23.
//

import SwiftUI
import Observation

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                    }
                
                }
            }
            .navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a Landmark")
        }
    }
    
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
