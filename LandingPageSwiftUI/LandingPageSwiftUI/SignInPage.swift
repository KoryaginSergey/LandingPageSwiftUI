//
//  SignInPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 06.09.2021.
//

import SwiftUI
import Foundation
import UIKit


struct SignInPage: View {
  
  @State var showingForgotPassword: Bool = false
  @State var showingWelcomeToApp: Bool = false
  
    var body: some View {
      VStack() {
        Spacer()
        HStack {
          Image("piano2")
            .resizable()
            .frame(width: 50, height: 50)
            .padding(.bottom, 5)
          Text("Appella")
            .font(.largeTitle)
            .fontWeight(.black)
        }
        Spacer()
        Text("Let's get started.")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .foregroundColor(Color("myBlueColor"))
        Text("Make the school app\nyour personal assistant")
          .font(.title3)
          .fontWeight(.thin)
          .multilineTextAlignment(.center)
          .lineLimit(2)
          .padding(.all)
        TextInputPage(modelUsername: ModelTextInput(title: "USERNAME", leftImage: "user", textPlaceholder: "enter your username"))
        TextInputPage(modelUsername: ModelTextInput(title: "PASSWORD", leftImage: "lock", rightImage: "eye", textPlaceholder: "enter your password"))
        Group {
          HStack {
            Spacer()
            Button("Forgot your password?") {
              showingForgotPassword = true
            }
            .padding(.trailing, 20)
            .accentColor(Color("myBlueColor"))
            .sheet(isPresented: $showingForgotPassword, content: {
              ForgotPasswordPage()
            })
          }
          Spacer()
          Button("Sign in") {
            showingWelcomeToApp = true
          }
          .frame(height: 55)
          .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          .accentColor(.white)
          .background(Color("myBlueColor"))
          .font(.body)
          .cornerRadius(10.0)
          .padding(.all)
          .fullScreenCover(isPresented: $showingWelcomeToApp, content: {
            WelcomeToAppPage()
          })
          Text("or scan QR code")
            .font(.body)
        }
        Spacer()
        Image("Slice 1")
          .resizable()
          .frame(height: 110)
      }
      .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)

    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
      SignInPage()
        
    }
}
