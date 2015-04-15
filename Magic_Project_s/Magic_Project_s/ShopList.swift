//
//  ShopList.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import Foundation

class ShopList {
    
    var shopliste = [Shop]()
    
    func addShop(shoop : Shop){
        shopliste.append(shoop)
    }
    
    func shopArray() -> [Shop]{
        return shopliste
    }
    
    func shopAtIndex(index: Int)-> Shop{
        return shopliste[index]
    }
}