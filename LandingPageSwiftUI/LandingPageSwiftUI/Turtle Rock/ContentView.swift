//
//  ContentView.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 03.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -100)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .font(.title)
                HStack {
                    Text("HI bro!")
                    Spacer()
                    Text("How are you?")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
