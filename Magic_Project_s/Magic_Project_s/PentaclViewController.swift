//
//  PentaclViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 11/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class PentaclViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Stepper du player 1
        //Poison
        StepperpoisP1.wraps = true
        StepperpoisP1.autorepeat = true
        StepperpoisP1.maximumValue = 12
        StepperpoisP1.minimumValue = -10
        //life
        StepperlifP1.wraps = true
        StepperlifP1.autorepeat = true
        StepperlifP1.maximumValue = 200
        StepperlifP1.minimumValue = -10
        
        //Stepper du player 2
        //poison
        StepperpoisP2.wraps = true
        StepperpoisP2.autorepeat = true
        StepperpoisP2.maximumValue = 12
        StepperpoisP2.minimumValue = -10
        //life
        StepperlifP2.wraps = true
        StepperlifP2.autorepeat = true
        StepperlifP2.maximumValue = 200
        StepperlifP2.minimumValue = -10
        
        //Stepper du player 3
        //Poison
        StepperpoisP3.wraps = true
        StepperpoisP3.autorepeat = true
        StepperpoisP3.maximumValue = 12
        StepperpoisP3.minimumValue = -10
        //life
        StepperlifP3.wraps = true
        StepperlifP3.autorepeat = true
        StepperlifP3.maximumValue = 200
        StepperlifP3.minimumValue = -10

        //Stepper du player 4
        //poison
        StepperpoisP4.wraps = true
        StepperpoisP4.autorepeat = true
        StepperpoisP4.maximumValue = 12
        StepperpoisP4.minimumValue = -10
        //life
        StepperlifP4.wraps = true
        StepperlifP4.autorepeat = true
        StepperlifP4.maximumValue = 200
        StepperlifP4.minimumValue = -10
        
        //Stepper du player 5
        //poison
        StepperpoisP5.wraps = true
        StepperpoisP5.autorepeat = true
        StepperpoisP5.maximumValue = 12
        StepperpoisP5.minimumValue = -10
        //life
        StepperlifP5.wraps = true
        StepperlifP5.autorepeat = true
        StepperlifP5.maximumValue = 200
        StepperlifP5.minimumValue = -10
        
        Initialize()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    ** Gestion du player 1
    */
    @IBOutlet weak var Nomplayer1: UITextField!
    @IBOutlet weak var MarkPoisonP1: UITextField!
    @IBOutlet weak var LiifeP1: UITextField!
    @IBOutlet weak var StepperlifP1: UIStepper!
    @IBOutlet weak var StepperpoisP1: UIStepper!
    
    @IBAction func StepPoisonP1(sender: UIStepper) {
        MarkPoisonP1.text = Int(StepperpoisP1.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifePl1(sender: UIStepper) {
        LiifeP1.text = Int(StepperlifP1.value).description
        WinCheckLife()
    }
    
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var Nomplayer2: UITextField!
    @IBOutlet weak var MarkPoisonP2: UITextField!
    @IBOutlet weak var LiifeP2: UITextField!
    @IBOutlet weak var StepperlifP2: UIStepper!
    @IBOutlet weak var StepperpoisP2: UIStepper!
    
    @IBAction func StepPoisonP2(sender: UIStepper) {
       MarkPoisonP2.text = Int(StepperpoisP2.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP2(sender: UIStepper) {
        LiifeP2.text = Int(StepperlifP2.value).description
        WinCheckLife()
    }
    
    /*
    ** Gestion du player 3
    */
    @IBOutlet weak var Nomplayer3: UITextField!
    @IBOutlet weak var MarkPoisonP3: UITextField!
    @IBOutlet weak var LiifeP3: UITextField!
    @IBOutlet weak var StepperlifP3: UIStepper!
    @IBOutlet weak var StepperpoisP3: UIStepper!
    
    @IBAction func StepPoisonP3(sender: UIStepper) {
        MarkPoisonP3.text = Int(StepperpoisP3.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP3(sender: UIStepper) {
        LiifeP3.text = Int(StepperlifP3.value).description
        WinCheckLife()
    }
    
    /*
    ** Gestion du player 4
    */
    @IBOutlet weak var Nomplayer4: UITextField!
    @IBOutlet weak var MarkPoisonP4: UITextField!
    @IBOutlet weak var LiifeP4: UITextField!
    @IBOutlet weak var StepperlifP4: UIStepper!
    @IBOutlet weak var StepperpoisP4: UIStepper!
    
    @IBAction func StepPoisonP4(sender: UIStepper) {
        MarkPoisonP4.text = Int(StepperpoisP4.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP4(sender: UIStepper) {
        LiifeP4.text = Int(StepperlifP4.value).description
        WinCheckLife()
    }
    
    /*
    ** Gestion du player 5
    */
    @IBOutlet weak var Nomplayer5: UITextField!
    @IBOutlet weak var MarkPoisonP5: UITextField!
    @IBOutlet weak var LiifeP5: UITextField!
    @IBOutlet weak var StepperlifP5: UIStepper!
    @IBOutlet weak var StepperpoisP5: UIStepper!
    
    @IBAction func StepPoisonP5(sender: UIStepper) {
        MarkPoisonP5.text = Int(StepperpoisP5.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP5(sender: UIStepper) {
        LiifeP5.text = Int(StepperlifP5.value).description
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
    
    @IBAction func RefreshView(sender: UIButton) {
        Initialize()
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
        // Victoire pour player 1 si 3 et 4 sont à 0pv
        if((LiifeP3.text).toInt() < 1 && (LiifeP4.text).toInt() < 1 && (LiifeP5.text).toInt() > 1 && (LiifeP1.text).toInt() > 1 && (LiifeP2.text).toInt() > 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer1.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        // Victoire pour player 2 si 4 et 5 sont à 0pv
        else if((LiifeP4.text).toInt() < 1 && (LiifeP5.text).toInt() < 1 && (LiifeP3.text).toInt() > 1 && (LiifeP2.text).toInt() > 1 && (LiifeP1.text).toInt() > 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        // Victoire pour player 3 si 1 et 5 sont à 0pv
        else if((LiifeP1.text).toInt() < 1 && (LiifeP5.text).toInt() < 1 && (LiifeP2.text).toInt() > 1 && (LiifeP3.text).toInt() > 1 && (LiifeP4.text).toInt() > 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer3.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        // Victoire pour player 4 si 1 et 2 sont à 0pv
            else if((LiifeP1.text).toInt() < 1 && (LiifeP2.text).toInt() < 1 && (LiifeP3.text).toInt() > 1 && (LiifeP4.text).toInt() > 1 && (LiifeP5.text).toInt() > 1){
                let alertController: UIAlertView = UIAlertView()
                alertController.delegate = self
                alertController.title = "Partie Gagnée"
                alertController.message = ("Victoire pour \(Nomplayer4.text)")
                alertController.addButtonWithTitle("OK")
                alertController.show()
                Initialize() // reinitialize tout
        }
        // Victoire pour player 5 si 3 et 2 sont à 0pv
                else if((LiifeP2.text).toInt() < 1 && (LiifeP3.text).toInt() < 1 && (LiifeP4.text).toInt() > 1 && (LiifeP1.text).toInt() > 1 && (LiifeP5.text).toInt() > 1){
                    let alertController: UIAlertView = UIAlertView()
                    alertController.delegate = self
                    alertController.title = "Partie Gagnée"
                    alertController.message = ("Victoire pour \(Nomplayer5.text)")
                    alertController.addButtonWithTitle("OK")
                    alertController.show()
                    Initialize() // reinitialize tout
        }
        
    }
    
    //Fonction qui verifie si l'un des de joueur est 10 marqueur poisons
    func WinCheckPoison() {
        // Victoire pour player 1 si 3 et 4 sont à 10 marqueur poison
        if((MarkPoisonP3.text).toInt() > 9 && (MarkPoisonP4.text).toInt() > 9 && (MarkPoisonP5.text).toInt() < 9 && (MarkPoisonP2.text).toInt() < 9 && (MarkPoisonP1.text).toInt() < 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer1.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
            // Victoire pour player 2 si 4 et 5 sont à 10 marqueur
        else if((MarkPoisonP4.text).toInt() > 9 && (MarkPoisonP5.text).toInt() > 9 && (MarkPoisonP1.text).toInt() < 9 && (MarkPoisonP3.text).toInt() < 9 && (MarkPoisonP2.text).toInt() < 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
            // Victoire pour player 3 si 1 et 5 sont à 10 marqueur
        else if((MarkPoisonP1.text).toInt() > 9 && (MarkPoisonP5.text).toInt() > 9 && (MarkPoisonP4.text).toInt() < 9 && (MarkPoisonP2.text).toInt() < 9 && (MarkPoisonP3.text).toInt() < 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer3.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
            // Victoire pour player 4 si 1 et 2 sont à 10 marqueur
        else if((MarkPoisonP1.text).toInt() > 9 && (MarkPoisonP2.text).toInt() > 9 && (MarkPoisonP3.text).toInt() < 9 && (MarkPoisonP4.text).toInt() < 9 && (MarkPoisonP5.text).toInt() < 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer4.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        // Victoire pour player 5 si 3 et 2 sont à 10 marqueur
        else if((MarkPoisonP2.text).toInt() > 9 && (MarkPoisonP3.text).toInt() > 9 && (MarkPoisonP4.text).toInt() < 9 && (MarkPoisonP5.text).toInt() < 9 && (MarkPoisonP1.text).toInt() < 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée"
            alertController.message = ("Victoire pour \(Nomplayer5.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
        if((MarkPoisonP1.text).toInt() > 9){
            LiifeP1.text = "0"
            StepperlifP1.value = 0
        }
        if((MarkPoisonP2.text).toInt() > 9){
            LiifeP2.text = "0"
            StepperlifP2.value = 0
        }
        if((MarkPoisonP3.text).toInt() > 9){
            LiifeP3.text = "0"
            StepperlifP3.value = 0
        }
        if((MarkPoisonP4.text).toInt() > 9){
            LiifeP4.text = "0"
            StepperlifP4.value = 0
        }
        if((MarkPoisonP5.text).toInt() > 9){
            LiifeP5.text = "0"
            StepperlifP5.value = 0
        }
    }
    
    func Initialize(){
        //init all
        //P1
        Nomplayer1.text = "Player1"
        MarkPoisonP1.text = "0"
        LiifeP1.text = "20"
        StepperpoisP1.value = 0
        StepperlifP1.value = 20
        
        //P2
        Nomplayer2.text = "Player2"
        MarkPoisonP2.text = "0"
        LiifeP2.text = "20"
        StepperpoisP2.value = 0
        StepperlifP2.value = 20
        
        //P3
        Nomplayer3.text = "Player3"
        MarkPoisonP3.text = "0"
        LiifeP3.text = "20"
        StepperpoisP3.value = 0
        StepperlifP3.value = 20
        
        //P4
        Nomplayer4.text = "Player4"
        MarkPoisonP4.text = "0"
        LiifeP4.text = "20"
        StepperpoisP4.value = 0
        StepperlifP4.value = 20
       
        //P5
        Nomplayer5.text = "Player5"
        MarkPoisonP5.text = "0"
        LiifeP5.text = "20"
        StepperpoisP5.value = 0
        StepperlifP5.value = 20

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
