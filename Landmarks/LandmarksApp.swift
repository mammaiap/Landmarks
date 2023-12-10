//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Muthulingam on 02/12/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
