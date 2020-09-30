//
//  CircleImage.swift
//  Landmarks
//
//  Created by Faraz Siddiqi on 9/30/20.
//  Copyright © 2020 Faraz Siddiqi. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4) )
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
