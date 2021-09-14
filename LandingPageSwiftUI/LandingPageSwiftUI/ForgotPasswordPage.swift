//
//  ForgotPasswordPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 07.09.2021.
//

import SwiftUI

struct ForgotPasswordPage: View {
  
  @Binding var textMail: String
  @State var showingSignInPage: Bool = false
  @Environment(\.presentationMode) var presentationMode
  
    var body: some View {
      ZStack (alignment: .topTrailing) {
        VStack() {
          Spacer()
            .frame(height: 100)
          Text("Forgot password?")
            .font(.largeTitle)
            .fontWeight(.heavy)
          Spacer()
            .frame(height: 50)
          TextInputPage(modelUsername: ModelTextInput(title: "email", leftImage: "mail", textPlaceholder: "enter your email"), text: $textMail)
          Spacer()
            .frame(height: 50)
          Button("Continue") {
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
        
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }) {
          Image(systemName: "xmark.circle")
        }
        .font(.title)
        .padding(.trailing)
        .padding(.top)
        .foregroundColor(Color("myBlueColor"))
      }
    }
}

struct ForgotPasswordPage_Previews: PreviewProvider {
  
  @State static var textMail: String = ""
  
    static var previews: some View {
      ForgotPasswordPage(textMail: $textMail)
    }
}
