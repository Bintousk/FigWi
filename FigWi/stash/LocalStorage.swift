//
//  LocalStorage.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-30.
//

import Foundation

 
class LocalStorage {
     
    private static let myKey: String = "myKey"
     
    public static var myValue: String {
        set {
            UserDefaults.standard.set(newValue, forKey: myKey)
        }
        get {
            return UserDefaults.standard.string(forKey: myKey) ?? ""
        }
    }
     
    public static func removeValue() {
        UserDefaults.standard.removeObject(forKey: myKey)
    }
     
}
