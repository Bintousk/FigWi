//
//  Goal.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-29.
//

import Foundation
import SwiftUI
import CoreLocation

struct Goal: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var deadLine: String
    var subTasks: [SubTask]

    struct SubTask: Codable, Hashable, Identifiable {
        var accomplished : Bool
        var id: Int
        var name: String
        
    }
    
}
