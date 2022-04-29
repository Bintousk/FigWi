//
//  GoalView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import Foundation
import SwiftUI
struct GoalView: View {
    var goal: Goal
    var body: some View {
        VStack {
            Text("\(goal.name)")
           
           
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var goal = ModelData().Goals[0]
    static var previews: some View {
        GoalView(goal: goal)
    }
}
