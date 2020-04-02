//
//  LandmarkList.swift
//  SwiftUILearn
//
//  Created by udc on 2020/4/2.
//  Copyright © 2020 udc. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                
                NavigationLink(destination:
                    LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
