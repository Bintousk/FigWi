//
//  CheckButton.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import SwiftUI

struct CheckButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "checkmark.circle" : "circle")
                .foregroundColor(Color("Purple"))
        }
    }
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
          CheckButton(isSet: .constant(true))
          
          CheckButton(isSet: .constant(false))
          
      }
    }
}
