//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Muthulingam on 09/12/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var defProfile = Profile.default
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            HStack{
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        defProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            }else{
                ProfileEditor(profile: $defProfile)
                    .onAppear(perform: {
                        defProfile = modelData.profile
                    })
                
                    .onDisappear(perform: {
                        modelData.profile = defProfile
                    })
            }
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
