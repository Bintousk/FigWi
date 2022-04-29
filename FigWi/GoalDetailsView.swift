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
    var body: some View {
        VStack {  Text("\(goal.name)")
            Spacer()
            BottomBar()}
    }
}

struct GoalDetailView_Previews: PreviewProvider {
    static var goal = ModelData().Goals[0]
    static var previews: some View {
        NavigationView{  GoalDetailView(goal: goal).environmentObject(ModelData())}
    }
}
