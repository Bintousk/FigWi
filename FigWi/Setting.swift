//
//  Setting.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-28.
//

import SwiftUI
import UIKit
struct Setting: View {
    var body: some View {
        VStack{
            Text("Settings").font(Font.custom("Helvetica", size: 20)).fontWeight(.light)
            VStack{
                NavigationLink(destination: NameSetting()) {
                    ZStack{
                        Rectangle().foregroundColor(Color("LightPink")).cornerRadius(.infinity)
                        HStack {
                            Label("Your informations", systemImage: "person.badge.key").font(.title).foregroundColor(Color("Purple"))
                            Spacer()
                        }.padding(.leading)
           
                           
                    }
                    
                        
                   
                }.frame(width: .infinity, height: 40)
                 .padding(.all)
            }
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
                        NavigationLink(destination: MainPage()) {
                            Image("Setting").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                        }
                        Spacer()
                    }
                }.frame(width: 300, height: 50)
            }.frame(width: .infinity, height: 80)
            
            
        }.ignoresSafeArea(.all, edges: .bottom)
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Setting().hiddenNavigationBarStyle()
            
        }
       
    }
}
