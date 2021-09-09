//
//  ForgotPasswordPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 07.09.2021.
//

import SwiftUI

struct WelcomeToAppPage: View {
  
  @Environment(\.presentationMode) var presentationMode
  
    var body: some View {
      VStack() {
        Spacer()
          .frame(height: 80)
        Text("Welcome\nto\nAPPELLA")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
        Spacer()
          .frame(height: 50)
        Text("Your username")
          .fontWeight(.medium)
        Spacer()
          .frame(height: 50)
        Text("hi")
        Spacer()
          .frame(height: 50)
        Button("Log out") {
          presentationMode.wrappedValue.dismiss()
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .accentColor(.white)
        .background(Color("myBlueColor"))
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

struct WelcomeToAppPage_Previews: PreviewProvider {
    static var previews: some View {
      WelcomeToAppPage()
    }
}
