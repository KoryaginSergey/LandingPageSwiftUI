//
//  ForgotPasswordPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 07.09.2021.
//

import SwiftUI

struct ForgotPasswordPage: View {
  
  @State var showingSignInPage: Bool = false
  
  @Environment(\.presentationMode) var presentationMode
  
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
//          showingSignInPage = true
          presentationMode.wrappedValue.dismiss()
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .accentColor(.white)
        .background(Color("myBlueColor"))
        .font(.body)
        .cornerRadius(10.0)
        .padding(.all)
//        .sheet(isPresented: $showingSignInPage, content: {
//          SignInPage()
//        })
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
