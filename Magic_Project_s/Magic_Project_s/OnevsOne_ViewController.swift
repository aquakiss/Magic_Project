//
//  OnevsOne_ViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 10/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit
import Foundation

class OnevsOne_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Stepper du player 1
        //Poison
        StepOutPoisonP1.wraps = true
        StepOutPoisonP1.autorepeat = true
        StepOutPoisonP1.maximumValue = 12
        StepOutPoisonP1.minimumValue = -10
        //life
        StepOutLifeP1.wraps = true
        StepOutLifeP1.autorepeat = true
        StepOutLifeP1.maximumValue = 200
        StepOutLifeP1.minimumValue = -10
        
        //Stepper du player 2
        //poison
        StepOutPoisonP2.wraps = true
        StepOutPoisonP2.autorepeat = true
        StepOutPoisonP2.maximumValue = 12
        StepOutPoisonP2.minimumValue = -10
        //life
        StepOutLifeP2.wraps = true
        StepOutLifeP2.autorepeat = true
        StepOutLifeP2.maximumValue = 200
        StepOutLifeP2.minimumValue = -10
        
        
        Initialize() // reinitialize tout
        
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
    @IBOutlet weak var StepOutPoisonP1: UIStepper!
    @IBOutlet weak var StepOutLifeP1: UIStepper!
    
    @IBAction func StepPoisonP1(sender: UIStepper) {
        MarkPoisonP1.text = Int(StepOutPoisonP1.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP1(sender: UIStepper) {
        LiifeP1.text = Int(StepOutLifeP1.value).description
        WinCheckLife()
    }
    
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var Nomplayer2: UITextField!
    @IBOutlet weak var MarkPoisonP2: UITextField!
    @IBOutlet weak var LiifeP2: UITextField!
    @IBOutlet weak var StepOutPoisonP2: UIStepper!
    @IBOutlet weak var StepOutLifeP2: UIStepper!
    
    @IBAction func StepPoisonP2(sender: UIStepper) {
        MarkPoisonP2.text = Int(StepOutPoisonP2.value).description
        WinCheckPoison()
    }
    
    @IBAction func StepLifeP2(sender: UIStepper) {
       LiifeP2.text = Int(StepOutLifeP2.value).description
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
        if((LiifeP1.text).toInt() == 0){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagné, \(Nomplayer1.text) n'a plus de vie"
            alertController.message = ("Victoire pour \(Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        else if((LiifeP2.text).toInt() < 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagné, \(Nomplayer2.text) a perdu sa vie"
            alertController.message = ("Victoire pour \(Nomplayer1.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
    }
    
    //Fonction qui verifie si l'un des de joueur est 10 marqueur poisons
    func WinCheckPoison() {
        if((MarkPoisonP1.text).toInt() > 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagné, trop de poison sur \(Nomplayer1.text)"
            alertController.message = ("Victoire pour \(Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        else if((MarkPoisonP2.text).toInt() > 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagné, le poison tue \(Nomplayer2.text)"
            alertController.message = ("Victoire pour \(Nomplayer1.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
    }
    
    func Initialize(){
        //init all
        Nomplayer1.text = "Player1"
        Nomplayer2.text = "Player2"
        MarkPoisonP1.text = "0"
        MarkPoisonP2.text = "0"
        LiifeP1.text = "20"
        LiifeP2.text = "20"
        StepOutPoisonP1.value = 0
        StepOutPoisonP2.value = 0
        StepOutLifeP1.value = 20
        StepOutLifeP2.value = 20
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
