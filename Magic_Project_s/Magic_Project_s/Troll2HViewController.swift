//
//  Troll2HViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 11/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class Troll2HViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Stepper du group 1
        //Poison
        G1StepperPoi.wraps = true
        G1StepperPoi.autorepeat = true
        G1StepperPoi.maximumValue = 12
        G1StepperPoi.minimumValue = -10
        //life
        G1StepperLif.wraps = true
        G1StepperLif.autorepeat = true
        G1StepperLif.maximumValue = 200
        G1StepperLif.minimumValue = -10
        
        //Stepper du group 2
        //poison
        G2StepperPoi.wraps = true
        G2StepperPoi.autorepeat = true
        G2StepperPoi.maximumValue = 12
        G2StepperPoi.minimumValue = -10
        //life
        G2StepperLif.wraps = true
        G2StepperLif.autorepeat = true
        G2StepperLif.maximumValue = 200
        G2StepperLif.minimumValue = -10
        
        
        
        
        Initialize()
        // Do any additional setup after loading the view.
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
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var G1Nomplayer2: UITextField!
    // Commun
    @IBOutlet weak var G1MarkPoison: UITextField!
    @IBOutlet weak var G1Liife: UITextField!
    @IBOutlet weak var G1StepperPoi: UIStepper!
    @IBOutlet weak var G1StepperLif: UIStepper!
    
    @IBAction func G1StepPoison(sender: UIStepper) {
        G1MarkPoison.text = Int(G1StepperPoi.value).description
        WinCheckPoison()
    }
    
    @IBAction func G1StepLife(sender: UIStepper) {
        G1Liife.text = Int(G1StepperLif.value).description
        WinCheckLife()
    }
    
    
    
    /*
    ** Groupe 2
    ** Gestion du player 1
    */
    @IBOutlet weak var G2Nomplayer1: UITextField!
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var G2Nomplayer2: UITextField!
    // Commun
    @IBOutlet weak var G2MarkPoison: UITextField!
    @IBOutlet weak var G2Liife: UITextField!
    @IBOutlet weak var G2StepperPoi: UIStepper!
    @IBOutlet weak var G2StepperLif: UIStepper!
    
    @IBAction func G2StepPoison(sender: UIStepper) {
        G2MarkPoison.text = Int(G2StepperPoi.value).description
        WinCheckPoison()
    }
    
    @IBAction func G2StepLife(sender: UIStepper) {
        G2Liife.text = Int(G2StepperLif.value).description
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
        allertControlle.title = "Lancer un Dé 20 faces"
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
        if((G1Liife.text).toInt() == 0){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, \(G1Nomplayer1.text) et \(G1Nomplayer2.text) n'ont plus de vie"
            alertController.message = ("Victoire pour \(G2Nomplayer1.text) et \(G2Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        else if((G2Liife.text).toInt() < 1){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, \(G2Nomplayer1.text) et \(G2Nomplayer2.text) ont perdu leurs vie"
            alertController.message = ("Victoire pour \(G1Nomplayer1.text) et \(G1Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
    }
    
    //Fonction qui verifie si l'un des de joueur est 10 marqueur poisons
    func WinCheckPoison() {
        if((G1MarkPoison.text).toInt() > 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, trop de poison sur \(G1Nomplayer1.text) et \(G1Nomplayer2.text)"
            alertController.message = ("Victoire pour \(G2Nomplayer1.text) et \(G2Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        else if((G2MarkPoison.text).toInt() > 9){
            let alertController: UIAlertView = UIAlertView()
            alertController.delegate = self
            alertController.title = "Partie Gagnée, le poison tue \(G2Nomplayer1.text) et \(G2Nomplayer2.text)"
            alertController.message = ("Victoire pour \(G1Nomplayer1.text) et \(G1Nomplayer2.text)")
            alertController.addButtonWithTitle("OK")
            alertController.show()
            Initialize() // reinitialize tout
        }
        
    }
    
    func Initialize(){
        //init all
        
        G1Nomplayer1.text = "Player1"
        G1Nomplayer2.text = "Player2"
        G1MarkPoison.text = "0"
        G1Liife.text = "30"
        G1StepperPoi.value = 0
        G1StepperLif.value = 30
        
        G2Nomplayer1.text = "Player3"
        G2Nomplayer2.text = "Player4"
        G2MarkPoison.text = "0"
        G2Liife.text = "30"
        G2StepperLif.value = 30
        G2StepperPoi.value = 0
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
