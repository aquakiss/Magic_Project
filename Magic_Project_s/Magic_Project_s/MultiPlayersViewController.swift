//
//  MultiPlayersViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 10/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class MultiPlayersViewController: UIViewController {
    var nbplayers : String!
    var infini : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nbplayers = "0"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtCusto(sender: UIButton) {
        println("coucou")
        /*
        AlertDemandCreatPlayers()
        while(nbplayers.toInt()! != 0){
            /*func prepareForSegue(segue: UIStoryboardSegue, sender: UIButton?) {
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
            if(segue.identifier == "GoToCusto"){
            var desViewController = segue.destinationViewController as CollectionCustomViewController
            desViewController.nbreçu = self.nbplayers.toInt()!
            println("change")
            */
            let storyboatrd : UIStoryboard = UIStoryboard(name : "Main", bundle:nil)
            let nextViewController = storyboatrd.instantiateViewControllerWithIdentifier("GoToCusto") as CollectionCustomViewController
            self.presentViewController(nextViewController, animated : true, completion : nil)
        // }
           // }

        } */
    }
    
    /* functionservant a afficher l'alerte ou l'utilisateur va créé x cell, x étant le number qu'il va
    ** saisir dans l'alerte
    */
    func AlertDemandCreatPlayers(){
        //Alerte demande combien de player va créé notre collectionview
        //1. Create the alert controller.
        
        var alert = UIAlertController(title: "Create players", message: "Enter a number [1 to 15]", preferredStyle: .Alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.placeholder = "Number of players"
        })
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Go!", style: .Default, handler: { (action) -> Void in
            let textField = alert.textFields![0] as UITextField
            
            self.nbplayers = textField.text
            
            // condition testant si la personne a bien rentré un nombre
            if( (self.nbplayers).toInt()! >= 1 && (self.nbplayers).toInt()! <= 15) {
                println(self.nbplayers)
            }
            else {
                self.nbplayers = "2"
            }
            //self.infini = false
            println("Text \((self.nbplayers).toInt()!) et  Text field: \(textField.text)")
            
        }))
        
        // 4. Present the alert.
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        println("coucous")
        if(segue.identifier == "GoToOne"){
            var desViewController = segue.destinationViewController as UIViewController
        }
        else if(segue.identifier == "GoToTroll"){
            var desViewController = segue.destinationViewController as UIViewController
        }
        else if(segue.identifier == "GoToPentac"){
            var desViewController = segue.destinationViewController as UIViewController
        }
        else if(segue.identifier == "GoToEmp"){
            var desViewController = segue.destinationViewController as UIViewController
        }
        else if(segue.identifier == "GoToCusto"){
            var desViewController = segue.destinationViewController as CollectionCustomViewController
            nbplayers = "5"
            desViewController.nbreçu = self.nbplayers
        }
    }
}
