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
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 100).foregroundColor(Color(hue: 0.899, saturation: 0.009, brightness: 0.978)).shadow(color: .black, radius: 1, x: 0, y: 2)
                    HStack{
                        Spacer()
                        NavigationLink(destination: MainPage()) {
                            Image("Unknow").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                        }
                        Spacer()
                        NavigationLink(destination: MainPage()) {
                            Image("Home").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                        }
                        Spacer()
                        NavigationLink(destination: Setting()) {
                            Image("Setting").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                        }
                        Spacer()
                    }
                }.frame(width: 300, height: 50)
            }.frame(width: .infinity, height: 80)
        }.ignoresSafeArea(.all, edges: [.bottom, .leading, .trailing])
            .onTapGesture {
                hideKeyboard()
            }
            .frame(width: 500, height: .infinity)
    }
}

struct NameSetting_Previews: PreviewProvider {
    static var previews: some View {
        NameSetting()
    }
}
