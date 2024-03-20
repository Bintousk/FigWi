//
//  BottomBar.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
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
          
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
