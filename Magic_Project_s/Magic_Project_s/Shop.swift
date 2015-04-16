//
//  Shop.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import Foundation

class Shop {
    var nom : String = ""
    var adresse : String = ""
    var DejaVisiter : Bool
    
    
    init(name:String, adr:String, dejavisit:Bool){
        self.nom = name
        self.adresse = adr
        self.DejaVisiter = dejavisit
    }
    
    func ToString(){
        println("Le shop \(nom) adresse \(adresse) et \(DejaVisiter)")
    }
    
}