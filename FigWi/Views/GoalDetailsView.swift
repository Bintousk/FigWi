//
//  GoalDetailsView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import Foundation
import SwiftUI
struct GoalDetailView: View {
    @EnvironmentObject var modelData: ModelData
  
    var goal: Goal
    var goalIndex: Int{
        modelData.Goals.firstIndex(where: {$0.id == goal.id})!
    }
    var body: some View {
        VStack {
            Text("\(goal.name)")
            Spacer().frame(height:30)
           HStack{
               Spacer().frame(width:10)
               Text("Your motivation : \(goal.motivation)")
               Spacer()
           }
            Spacer()
            HStack{
                Spacer().frame(width:10)
                Text("Deadline : \(goal.deadLine)")
                Spacer()
            }
            Spacer()
            
            ForEach(goal.subTasks){ subtask in

                
                HStack{

                    Spacer().frame(width:10)
                    CheckButton(isSet: $modelData.Goals[goalIndex].subTasks[findSubtaskIndex(goal: goal, id: subtask.id)].accomplished)
                    Text("\(subtask.name)")
                   Spacer()
                }
                   
                    
                    
                }
            
            Spacer()
            BottomBar()} .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct GoalDetailView_Previews: PreviewProvider {
    static var goal = ModelData().Goals[0]
    static var previews: some View {
        NavigationView{  GoalDetailView(goal: goal).environmentObject(ModelData())}
    }
}
