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
        categorie = "Poids insuffisant "
        
        
    }
    else if resultat < 25{
        categorie = "Poids normal "
    }
    else if resultat < 30{
        categorie = "Embonpoint "
    }
    else if resultat < 35{
        categorie = "Obesite classe I "
    }
    else if resultat < 39{
        categorie = "Obesite classe II"
    }
    else {
        categorie = "Obesite classe III "
    }
    return(resultat, categorie)
}
