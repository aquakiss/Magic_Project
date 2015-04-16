//
//  AideInfo.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import Foundation

class AideInf {
    var nom : String
    var nbjoueurs : Int
    var information : String
    
    init(name: String, nb: Int, inform: String){
        self.nom = name
        self.nbjoueurs = nb
        self.information = inform
    }
    
    func ToString(){
        println("Le \(nom) avec \(nbjoueurs), \(information)")
    }
    
}