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
  
  @Binding var textMail: String
  @Binding var textPassword: String
  
  @State private var showingForgotPassword = false
  @State private var showingWelcomeToApp = false
  @State private var alertShown = false
  
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
          .fixedSize(horizontal: true, vertical: true)
        TextInputPage(modelUsername: ModelTextInput(title: "USERNAME", leftImage: "user", textPlaceholder: "enter your username"), text: $textMail)
        TextInputPage(modelUsername: ModelTextInput(title: "PASSWORD", leftImage: "lock", rightImage: "eye", textPlaceholder: "enter your password"), text: $textPassword)
        Group {
          HStack {
            Spacer()
            Button("Forgot your password?") {
              showingForgotPassword = true
              print($textMail)
            }
            .padding(.trailing, 20)
            .accentColor(Color("myBlueColor"))
            .sheet(isPresented: $showingForgotPassword, content: {
              ForgotPasswordPage(textMail: $textMail)
            })
          }
        
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
        
          HStack(spacing: 0) {
            Text("or ")
              .foregroundColor(.black)
              .font(.system(size: 14))
            Text("scan QR code")
              .font(.system(size: 14))
              .foregroundColor(Color("myBlueColor"))
              .onTapGesture {
                alertShown = true
              }
              .alert(isPresented: $alertShown) { () -> Alert in
                Alert(title: Text("Good!"), message: Text("Your QR code has been scanned"), dismissButton: .default(Text("Ok")))
            }
          }
          .padding()
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
  
  @State static var textMail: String = ""
  @State static var textPassword: String = ""
  
    static var previews: some View {
      SignInPage(textMail: $textMail, textPassword: $textPassword)
        
    }
}

