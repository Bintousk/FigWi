//
//  NameSetting.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-28.
//

import SwiftUI

struct NameSetting: View {
    @State private var Name = ""
    @State private var FirstName = ""
    var body: some View {
        VStack{
            Text("Your informations")
                .font(Font.custom("Helvetica", size: 20))
                .fontWeight(.light)
            Spacer()
            TextField("Please enter your name", text: $Name)
                .padding().frame(width: 300, height: 80)
                .border(Color("Purple"), width: 3)
                .cornerRadius(3.0)
            TextField("Please enter your first name", text: $FirstName).padding().frame(width: 300, height: 80)
                .border(Color("Purple"), width: 3)
                .cornerRadius(3.0)
            Spacer()
           BottomBar()
        }.ignoresSafeArea(.all, edges: [.bottom, .leading, .trailing])
            .onTapGesture {
                hideKeyboard()
            }
            .frame(maxWidth: .infinity)
            .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct NameSetting_Previews: PreviewProvider {
    static var previews: some View {
        NameSetting()
    }
}
