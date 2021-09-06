//
//  TextInputPage.swift
//  LandingPageSwiftUI
//
//  Created by macuser on 06.09.2021.
//

import SwiftUI

struct TextInputPage: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("USERNAME")
          .font(.caption2)
          .fontWeight(.medium)
          
        HStack {
          Image("user")
            .colorMultiply(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
          TextField("your username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .colorMultiply(.black)
            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
          Image("eye")
            .colorMultiply(.gray)
        }
        Divider()
      } .padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}

struct TextInputPage_Previews: PreviewProvider {
    static var previews: some View {
        TextInputPage()
    }
}
