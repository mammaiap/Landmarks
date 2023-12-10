//
//  ContentView.swift
//  Landmarks
//
//  Created by Muthulingam on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tap = .featured
    
    enum Tap{
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem { Label("Featured", systemImage: "star")
                }
                .tag(Tap.featured)
            LandmarkList()
                .tabItem { Label("List", systemImage: "list.bullet") }
                .tag(Tap.list)
        }
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
