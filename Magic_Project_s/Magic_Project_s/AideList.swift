//
//  AideList.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import Foundation

class AideList {
    
    var liste = [AideInf]()
    
    func addShop(info : AideInf){
        liste.append(info)
    }
    
    func shopArray() -> [AideInf]{
        return liste
    }
    
    func shopAtIndex(index: Int)-> AideInf{
        return liste[index]
    }
    
    func shopcount() -> Int{
        return liste.count
    }
    
    init(){
        addShop(AideInf(name: "1vs1", nb: 2, inform: "ze"))
       /* addShop(AideInf(name: "Troll à Deux têtes", nb: 4, inform: "FONCTIONNEMENT GENERAL, Faisons d abord les présentations avec cette variante-Les parties de Troll à Deux Têtes se jouent avec deux équipes de 2 joueurs chacune (et 2 fois 2 font 4 donc ça se joue à 4 ) -Aucune autre option multijoueurs n est utilisée en Géant à Deux Têtes. Déjà regardons les différentes options officielles en multijoueurs:
            -la portée: la portée, c est la limite au-delà de laquelle on ne peut pas affecter le jeu, elle se mesure en sièges. Elle n'est utile qu'en multijoueur mais comme en Troll à Deux Têtes on incarne deux... Trolls à deux têtes, ça n'a pas plus d'intérêt qu'en un contre un. A oublier donc.
            -attaquer plusieurs joueurs: comme ce n est pas utilisé on attaque qu'un seul joueur (nous verront plus tard comment ce miracle est possible )
            -déplacement: Ca consiste à donner ses créatures à un coéquipier. ce n est pas utilisé là non plus
            -attaquer à gauche ou à droite: On attaque un joueur de son choix à chaque phase d attaque (mais qu'un seul). Nous verront plus tard comment tout celà fonctionne.
            
            Comment jouer
            
            
            Tout d abord il faut trouver un coéquipier avec qui jouer puis ensuite deux adversaires qui joueront ensembles.
            D abord il faut savoir qu'en Troll à deux têtes, les joueurs ont un total de points de vie partagé qui est de 30 PV au départ. Aucune autre ressource des joueurs comme les cartes en main, les bibliothèques, les cimetières n'est partagée, contrairement à ce que certains croient.
            Les joueurs ne jouent pas non plus leurs tours individuellement, ce sont les équipes qui jouent les tours. ")) */
        addShop(AideInf(name: "Pentacle", nb: 2, inform: "String"))
        addShop(AideInf(name: "Empereur", nb: 2, inform: "String"))
        addShop(AideInf(name: "Custom", nb: 2, inform: "String"))
    }
    
}