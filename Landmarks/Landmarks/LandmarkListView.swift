//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by vphom on 10/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
            Spacer()
        }
       
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE","iPhone XS Max"],id:\.self){ deviceName in
            LandmarkListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
    }
}
