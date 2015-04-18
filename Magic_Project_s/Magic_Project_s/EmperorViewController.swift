//
//  EmperorViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 11/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class EmperorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Stepper du group 1
        //P1
        G1StepperP1.wraps = true
        G1StepperP1.autorepeat = true
        G1StepperP1.maximumValue = 200
        G1StepperP1.minimumValue = -10
        //P2
        G1StepperP2.wraps = true
        G1StepperP2.autorepeat = true
        G1StepperP2.maximumValue = 200
        G1StepperP2.minimumValue = -10
        //emperor 1
        G1StepperEmp.wraps = true
        G1StepperEmp.autorepeat = true
        G1StepperEmp.maximumValue = 200
        G1StepperEmp.minimumValue = -10
        
        //Stepper du group 2
        //P1
        G2StepperP1.wraps = true
        G2StepperP1.autorepeat = true
        G2StepperP1.maximumValue = 200
        G2StepperP1.minimumValue = -10
        //P2
        G2StepperP2.wraps = true
        G2StepperP2.autorepeat = true
        G2StepperP2.maximumValue = 200
        G2StepperP2.minimumValue = -10
        //Emperor 2
        G2StepperEmp2.wraps = true
        G2StepperEmp2.autorepeat = true
        G2StepperEmp2.maximumValue = 200
        G2StepperEmp2.minimumValue = -10
        // Do any additional setup after loading the view.
        Initialize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    ** Groupe 1
    ** Gestion du player 1
    */
    @IBOutlet weak var G1Nomplayer1: UITextField!
    @IBOutlet weak var G1LiifeP1: UITextField!
    @IBOutlet weak var G1StepperP1: UIStepper!
    
    @IBAction func G1StepLifeP1(sender: UIStepper) {
        G1LiifeP1.text = Int(G1StepperP1.value).description
    }
    
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var G1Nomplayer2: UITextField!
    @IBOutlet weak var G1LiifeP2: UITextField!
    @IBOutlet weak var G1StepperP2: UIStepper!
    
    @IBAction func G1StepLifeP2(sender: UIStepper) {
        G1LiifeP2.text = Int(G1StepperP2.value).description
    }
    
    /*
    ** Gestion de l'emperor 1
    */
    @IBOutlet weak var G1NomplayerEmp1: UITextField!
    @IBOutlet weak var G1LiifeEmp1: UITextField!
    @IBOutlet weak var G1StepperEmp: UIStepper!
    
    @IBAction func G1StepLifeEmp(sender: UIStepper) {
        G1LiifeEmp1.text = Int(G1StepperEmp.value).description
        WinCheckLife()
    }
    
    
    /*
    ** Groupe 2
    ** Gestion du player 1
    */
    @IBOutlet weak var G2Nomplayer1: UITextField!
    @IBOutlet weak var G2LiifeP1: UITextField!
    @IBOutlet weak var G2StepperP1: UIStepper!
    
    @IBAction func G2StepLifeP1(sender: UIStepper) {
        G2LiifeP1.text = Int(G2StepperP1.value).description
    }
    
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var G2Nomplayer2: UITextField!
    @IBOutlet weak var G2LiifeP2: UITextField!
    @IBOutlet weak var G2StepperP2: UIStepper!
    
    @IBAction func G2StepLifeP2(sender: UIStepper) {
        G2LiifeP2.text = Int(G2StepperP2.value).description
    }
    
    /*
    ** Gestion de l'emperor 2
    */
    @IBOutlet weak var G2NomplayerEmp2: UITextField!
    @IBOutlet weak var G2LiifeEmp2: UITextField!
    @IBOutlet weak var G2StepperEmp2: UIStepper!
    
    @IBAction func G2StepLifeEmp(sender: UIStepper) {
        G2LiifeEmp2.text = Int(G2StepperEmp2.value).description
        WinCheckLife()
    }
    
    /*
    ** Bouton pour revenir Page Multijoueurs
    */
    @IBAction func GoBack(sender: UIButton) {
        dismissViewControllerAnimated(true , completion: nil)
    }
    
    /*
    ** Bouton pour lancer le dé 20 faces
    */
    @IBAction func LancerDe(sender: UIButton) {
        //Appel au random lance de dé
        var res : Int = RandLanceDe()
        let allertControlle: UIAlertView = UIAlertView()
        allertControlle.delegate = self
        allertControlle.title = "Lancer de Dé 20 faces"
        allertControlle.message = String(res)
        allertControlle.addButtonWithTitle("OK")
        allertControlle.show()
    }
    
    /*
    ** Bouton pour lancer le pile ou face
    */
    @IBAction func TirPileFace(sender: UIButton) {
        //appel au random tirage pile ou face
        var res : String = RandTirPileFace()
        let alertController: UIAlertView = UIAlertView()
        alertController.delegate = self
        alertController.title = "Pile ou Face"
        alertController.message = res
        alertController.addButtonWithTitle("OK")
        alertController.show()
    }
    
    // lance un dé
    func RandLanceDe() -> Int{
        //sort un chiffre random
        var dice1 : Int = Int (arc4random_uniform(19) + 1)
        return dice1
    }
    
    // tir à pile ou face
    func RandTirPileFace() -> String{
        //sort un chiffre random
        // si paire : face
        // si impair : pile
        var pileface : Int = Int (arc4random_uniform(99) + 1)
        if(pileface%2 == 0){
            //notre modulo défini soit pile soit face
            return "Face"
        }
        else{
            return "Pile"
        }
    }
    
    //Fonction qui verifie si l'un des de joueur est 0 pv
    func WinCheckLife() {
        if((G1LiifeEmp1.text).toInt() == 0){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, \(G1NomplayerEmp1.text) n'a plus de vie"
            alertController.message = ("Victoire pour le groupe de  \(G2NomplayerEmp2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        else if((G2LiifeEmp2.text).toInt() < 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, \(G2NomplayerEmp2.text) n'a plus de vie"
            alertController.message = ("Victoire pour le groupe de  \(G1NomplayerEmp1.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
    }
    
    func Initialize(){
        //init all
        //Group 1
        //P1
        G1Nomplayer1.text = "General1"
        G1LiifeP1.text = "20"
        G1StepperP1.value = 20
        //P2
        G1Nomplayer2.text = "General2"
        G1LiifeP2.text = "20"
        G1StepperP2.value = 20
        // Emperor2
        G1NomplayerEmp1.text = "Emperor1"
        G1LiifeEmp1.text = "30"
        G1StepperEmp.value = 30
        
        // Group 2
        // P1
        G2Nomplayer1.text = "General1"
        G2LiifeP1.text = "20"
        G2StepperP1.value = 20
        //P2
        G2Nomplayer2.text = "General2"
        G2LiifeP2.text = "20"
        G2StepperP2.value = 20
        // Emperor 2
        G2NomplayerEmp2.text = "Emperor2"
        G2LiifeEmp2.text = "30"
        G2StepperEmp2.value = 30
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
