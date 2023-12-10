//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Muthulingam on 09/12/23.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    var body: some View {
        
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300.0, height: 300.0)
                .scaleEffect(1.0/3.0)
                .frame(width: 100,height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Text for \(name)")
            
        }
        
        
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
