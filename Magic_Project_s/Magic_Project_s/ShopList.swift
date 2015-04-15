//
//  ShopList.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import Foundation

class ShopList {
    //tableau stock resto
    var shopList = [Shop]()
    
    //methodes acces au resto
    func addShop(shop : Shop){
        shopList.append(shop)
    }
    
    func shopArray() -> [Shop]{
        return shopList
    }
    
    func shopAtIndex(index: Int)-> Shop{
        return shopList[index]
    }
}