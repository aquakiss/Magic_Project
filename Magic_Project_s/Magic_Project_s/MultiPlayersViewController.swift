//
//  MultiPlayersViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 10/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class MultiPlayersViewController: UIViewController {
    var nbplayers : Int!
    var infini : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtCusto(sender: UIButton) {
        //println("coucou")
        //AlertDemandCreatPlayers()
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
            
            var players : String = textField.text
            
            // condition testant si la personne a bien rentré un nombre
            if( (players).toInt()! >= 1 && (players).toInt()! <= 15) {
                println(self.nbplayers)
                self.nbplayers = players.toInt()!
            }
            else {
                players = "2"
            }
            //self.infini = false
            println("Text \((players).toInt()!) et  Text field: \(textField.text)")
            
            //self.performSegueWithIdentifier("GoToCustom", sender: nil)
        }))
        
        // 4. Present the alert.
        self.presentViewController(alert, animated: true, completion: nil)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
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
            println("seg custom")
            //desViewController.nbreçu = nbplayers
        }
    }
}
