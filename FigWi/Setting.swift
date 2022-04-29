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
            BottomBar()
            
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
