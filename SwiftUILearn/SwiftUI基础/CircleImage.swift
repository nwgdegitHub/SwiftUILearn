//
//  CircleImage.swift
//  SwiftUILearn
//
//  Created by udc on 2020/4/2.
//  Copyright © 2020 udc. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image:Image
    
    var body: some View {
        image
            
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
