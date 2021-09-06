//
//  CircleImage.swift
//  LandingPageSwiftUI
//
//  Created by Admin on 05.09.2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("savane")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
