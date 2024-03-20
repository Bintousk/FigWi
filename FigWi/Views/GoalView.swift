//
//  GoalView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import Foundation
import SwiftUI
import UIKit
struct GoalView: View {
    var goal: Goal
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            HStack{
                Spacer().frame(width: 10)
            ZStack{
                Rectangle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("LightPink")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(.infinity)
                   
                Text("\(goal.name)")
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("Purple")/*@END_MENU_TOKEN@*/).font(Font.custom("Helvetica", size: 20)).fontWeight(.semibold)
            }.frame(width: .infinity, height: 50)
                Spacer().frame(width: 10)
            }
           
         
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var goal = ModelData().Goals[0]
    static var previews: some View {
        GoalView(goal: goal)
    }
}
