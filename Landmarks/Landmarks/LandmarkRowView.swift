//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by vphom on 10/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
   
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width:50,height:50)
            
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRowView(landmark: landmarkData[0])
            LandmarkRowView(landmark: landmarkData[1])
            LandmarkRowView(landmark: landmarkData[2])
            LandmarkRowView(landmark: landmarkData[3])
            LandmarkRowView(landmark: landmarkData[4])
            LandmarkRowView(landmark: landmarkData[5])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
