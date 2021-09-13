//
//  LandingPageSwiftUIApp.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 03.09.2021.
//

import SwiftUI

@main
struct LandingPageSwiftUIApp: App {
  
  @State static var textMail: String = ""
  @State static var textPassword: String = ""
  
    var body: some Scene {
        WindowGroup {
          SignInPage(textMail: LandingPageSwiftUIApp.$textMail, textPassword: LandingPageSwiftUIApp.$textPassword)
//          ForgotPasswordPage()
        }
    }
}
