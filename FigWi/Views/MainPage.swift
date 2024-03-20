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
                    NavigationLink(destination: GoalsListView()){Image("Goal").resizable().frame(width: 150, height: 150)}
                    Spacer()
                    NavigationLink(destination: Add()){
                        Image("Add").resizable().frame(width: 150, height: 150)
                    }
                    
                    
                    Spacer()
                }
                Spacer()
            }
            BottomBar()
            
            
        }.hiddenNavigationBarStyle()
            .ignoresSafeArea(.all, edges: .bottom)
        
        
        
    }
}
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainPage()
        }
    }
}

