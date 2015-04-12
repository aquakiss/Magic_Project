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
    
    @IBAction func G1StepPoison(sender: UIStepper) {    }
    
    @IBAction func G1StepLife(sender: UIStepper) {    }
    
    
    
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
    
    @IBAction func G2StepPoison(sender: UIStepper) {    }
    
    @IBAction func G2StepLife(sender: UIStepper) {    }
    
    
    
    
    
    /*
    ** Bouton pour revenir Page Multijoueurs
    */
    @IBAction func GoBack(sender: UIButton) {
        dismissViewControllerAnimated(true , completion: nil)
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
