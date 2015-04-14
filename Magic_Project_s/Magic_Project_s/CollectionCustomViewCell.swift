//
//  CollectionCustomViewCell.swift
//  Magic_Project_s
//
//  Created by Developer on 15/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class CollectionCustomViewCell: UICollectionViewCell {
    
    @IBOutlet weak var PlayerName: UITextField!
    @IBOutlet weak var PlayerLife: UITextField!
    @IBOutlet weak var StepperPlayer: UIStepper!
    
    @IBAction func FStepmodif(sender: UIStepper) {
        PlayerLife.text = Int(StepperPlayer.value).description
    }
}
