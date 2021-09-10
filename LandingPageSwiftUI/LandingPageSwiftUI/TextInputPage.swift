//
//  TextInputPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 06.09.2021.
//

import SwiftUI

struct TextInputPage: View {
  
  let modelUsername: ModelTextInput
  @State var text: String = ""
  @State var eyeIsEnable = true
  
    var body: some View {
      VStack(alignment: .leading) {
        Text(modelUsername.title)
          .font(.caption2)
          .fontWeight(.medium)
          .foregroundColor(Color("myBlueColor"))
        
        HStack {
          Image(modelUsername.leftImage)
            .colorMultiply(Color("myBlueColor"))
          
          if eyeIsEnable {
            TextField(modelUsername.textPlaceholder, text: $text)
              .colorMultiply(.black)
              .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
          } else {
            SecureField (modelUsername.textPlaceholder, text: $text)
              .colorMultiply(.black)
              .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
          }
          Image(eyeIsEnable ? (modelUsername.rightImage ?? "default") : "eye-slash")
            .colorMultiply(.gray)
            .onTapGesture(count: 1, perform: {
              self.eyeIsEnable.toggle()
            })
        }
        Divider()
//          .background(Color.red)
      } .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}

struct TextInputPage_Previews: PreviewProvider {
    static var previews: some View {
      TextInputPage(modelUsername: ModelTextInput(title: "USERNAME", leftImage: "user", rightImage: "eye", textPlaceholder: "your username"))
      
    }
}
