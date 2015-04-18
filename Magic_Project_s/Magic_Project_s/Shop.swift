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
    var adress : String = ""
    var city : String = ""
    var state : String = ""
    var zip : String = ""
    var DejaVisiter : Bool
    
    
    init(name:String, adr:String, cit:String, stat:String, zi:String, dejavisit:Bool){
        self.nom = name
        self.adress = adr
        self.city = cit
        self.state = stat
        self.zip = zi
        self.DejaVisiter = dejavisit
    }
    
    func ReturnAdresse() -> String{
        return "\(adress) à \(city) en \(state), \(zip)"
    }
    
    func ToString(){
        println("Le shop \(nom) adresse \(adress), \(city) \(state), \(zip) et \(DejaVisiter)")
    }
    
}