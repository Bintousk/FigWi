//
//  CalculFunctions.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-28.
//

import Foundation
func CalculOfBMI(poidstr: String, taillestr: String) -> (Double, String) {
    let  poid : Double =  Double(poidstr) ?? 0
    let  taille : Double = Double(taillestr) ?? 0
    let tailles = (taille * taille)
    let poids = poid * 10000
    let imc : Double =  poids / tailles
    let resultat = (imc * 100).rounded() / 100
    
    
    
    var categorie = ""
    
    if resultat < 18.5{
        categorie = "Underweight "
        
        
    }
    else if resultat < 25{
        categorie = "Normal weight "
    }
    else if resultat < 30{
        categorie = "Overweight "
    }
    else if resultat < 35{
        categorie = "Obesity class I "
    }
    else if resultat < 39{
        categorie = "Obesity class II"
    }
    else {
        categorie = "Obesity class III "
    }
    return(resultat, categorie)
}

func findSubtaskIndex(goal: Goal, id: Int) -> Int{
    let index = goal.subTasks.firstIndex(where: {$0.id == id})!
    return index
}
