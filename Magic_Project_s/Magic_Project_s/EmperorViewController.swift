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
    @IBOutlet weak var Nomplayer1: UITextField!
    @IBOutlet weak var MarkPoisonP1: UITextField!
    @IBOutlet weak var LiifeP1: UITextField!
    
    @IBAction func StepPoisonP1(sender: UIStepper) {    }
    
    @IBAction func StepLifeP1(sender: UIStepper) {    }
    
    /*
    ** Gestion du player 2
    */
    @IBOutlet weak var Nomplayer2: UITextField!
    @IBOutlet weak var MarkPoisonP2: UITextField!
    @IBOutlet weak var LiifeP2: UITextField!
    
    @IBAction func StepPoisonP2(sender: UIStepper) {    }
    
    @IBAction func StepLifeP2(sender: UIStepper) {    }
    
    
    /*
    ** Groupe 1
    ** Gestion du player 1
    */
    
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
