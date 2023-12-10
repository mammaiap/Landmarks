//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Muthulingam on 02/12/23.
//

import SwiftUI



struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[0])
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandmarkRow(landmark: landmarks[1])
}
