//
//  MultiPlayersViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 10/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class MultiPlayersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtOnevs(sender: UIButton) {
    }

    @IBAction func BtTrolls(sender: UIButton) {
    }
    
    @IBAction func BtPent(sender: UIButton) {
    }
    
    @IBAction func BtEmp(sender: UIButton) {
    }
    
    @IBAction func BtCusto(sender: UIButton) {
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
            var desViewController = segue.destinationViewController as UIViewController
        }
    
    
    }
    

}
