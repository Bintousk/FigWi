//
//  MainPage.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-27.
//

import Foundation
import SwiftUI
struct MainPage: View {
    var body: some View {
       
            VStack {
                
                HStack {
                    
                    ZStack{
                        Image("Tabpink").frame(width: 350, height: 350)
                        TabView(){
                            Page2()
                            Page()
                            
                            
                        }
                        .frame(width: 330, height: 330)
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        .rotationEffect(.degrees(-90))
                        .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    }
                    
                }
                
                
                
                HStack{
                    
                    
                    Spacer()
                    VStack{
                        Spacer()
                        NavigationLink(destination: BmiCalul()){Image("Calcul").resizable().frame(width: 150, height: 150)}
                        Spacer()
                        NavigationLink(destination: Reminder()){
                            Image("Reminder").resizable().frame(width: 150, height: 150)
                        }
                        
                        
                        Spacer()
                    }
                    Spacer()
                    VStack{
                        Spacer()
                        NavigationLink(destination: Goal()){Image("Goal").resizable().frame(width: 150, height: 150)}
                        Spacer()
                        NavigationLink(destination: Add()){
                            Image("Add").resizable().frame(width: 150, height: 150)
                        }
                        
                        
                        Spacer()
                    }
                    Spacer()
                }
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
                
               
              
                
            }.hiddenNavigationBarStyle()
                .ignoresSafeArea(.all, edges: .bottom)
      
        
        
    }
}
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

