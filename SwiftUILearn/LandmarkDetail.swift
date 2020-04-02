//
//  LandmarkDetail.swift
//  SwiftUILearn
//
//  Created by udc on 2020/4/2.
//  Copyright © 2020 udc. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack{
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:landmarkData[0])
    }
}
