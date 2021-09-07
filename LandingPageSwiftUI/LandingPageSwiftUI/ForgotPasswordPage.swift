//
//  ForgotPasswordPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 07.09.2021.
//

import SwiftUI

struct ForgotPasswordPage: View {
    var body: some View {
      VStack() {
        Spacer()
          .frame(height: 80)
        Text("Forgot password?")
          .font(.largeTitle)
          .fontWeight(.heavy)
        Spacer()
          .frame(height: 50)
        TextInputPage()
        Spacer()
          .frame(height: 50)
        Button("Continue") {
          
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .accentColor(.white)
        .background(Color(.blue))
        .font(.body)
        .cornerRadius(10.0)
        .padding(.all)
        Spacer()
        Image("Slice 1")
          .resizable()
          .frame(height: 110)
      }
      .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)              
    }
}

struct ForgotPasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordPage()
    }
}
