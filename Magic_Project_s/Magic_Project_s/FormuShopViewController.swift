//
//  FormuShopViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class FormuShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var newshoplist : ShopList!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var TFNameshop: UITextField!
    @IBOutlet weak var TFAdress: UITextField!
    @IBOutlet weak var SWDejaVis: UISwitch!
    @IBOutlet weak var TFCit: UITextField!
    @IBOutlet weak var TFstat: UITextField!
    @IBOutlet weak var TFzip: UITextField!
    
    @IBAction func GoBackBt(sender: UIButton) {
        dismissViewControllerAnimated(true, completion:nil)
    }

    @IBAction func BtCreate(sender: UIButton) {
        
        if(TFNameshop.text != "" && TFAdress.text != "" && TFCit.text != "" && TFstat.text != ""){
            
            var trtkzmp : Shop = Shop(name: TFNameshop.text, adr: TFAdress.text, cit: TFCit.text, stat: TFstat.text, zi: TFzip.text, dejavisit: SWDejaVis.on)
            
            println("\(TFNameshop.text) \(TFAdress.text) \(SWDejaVis.on)")
            
            trtkzmp.ToString()
                
            newshoplist.addShop(trtkzmp)
            println(newshoplist.shopcount())
        
        //En affiche
        //Error.text = "Formulaire bien remplis"
        let allertControlle: UIAlertView = UIAlertView()
        allertControlle.delegate = self // envoie tout le fonction dans ma classe
        allertControlle.title = "Pas d'erreur"
        allertControlle.message = "Formulaire bien remplis !"
        allertControlle.addButtonWithTitle("OK")
            allertControlle.show()
        }
        else {
        //Error.text = "Un des champs retourne une erreur"
    
        let alertController: UIAlertView = UIAlertView()
        alertController.delegate = self // envoie tout le fonction dans ma classe
        alertController.title = "Alerte"
        alertController.message = "Un des champs retourne une erreur"
        alertController.addButtonWithTitle("Cancel")
        alertController.addButtonWithTitle("Revenir sur le tableau")
        alertController.show()
        }
    
    }

    func alertView(View: UIAlertView!, clickedButtonAtIndex ButtonIndex:Int){
        switch ButtonIndex{
        case 0:
            if(View.title == "Alerte"){
                //mon action
                println("Cancel")
            }
            if(View.title == "Pas d'erreur"){
                //mon action
                println("Revenir sur le tableau")
                dismissViewControllerAnimated(true , completion: nil)
            }
            break
        case 1:
            if(View.title == "Alerte"){
                //mon action
                println("Revenir")
                dismissViewControllerAnimated(true , completion: nil)
            }
            break
        default:
            println("Default")
            break
        
        }

    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
