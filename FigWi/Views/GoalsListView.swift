//
//  GoalsListView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import SwiftUI

struct GoalsListView: View {
    @EnvironmentObject var modelData: ModelData
    var goals: [Goal]{
        modelData.Goals
    }
    var body: some View {
        VStack{
            ForEach(goals){ goal in
                NavigationLink(destination: GoalDetailView(goal: goal)) {
                    GoalView(goal: goal)
                }
                
            }
            Spacer()
            BottomBar()
        }.ignoresSafeArea(.all, edges: .bottom)
    }
}

struct GoalsListView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView{
           GoalsListView().environmentObject(ModelData())
           
       }
    }
}
