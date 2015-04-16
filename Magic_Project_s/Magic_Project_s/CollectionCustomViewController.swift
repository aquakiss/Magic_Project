//
//  CollectionCustomViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 14/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

let reuseIdentifier = "CellPlayer"
var nbplayers : String = "1" // variable déterminera le nb de player a créer
var boinfini  : Bool = false

class CollectionCustomViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var test : String
        
        // Register cell classes
        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }
    
    var nbreçu : Int!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GoBack(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true , completion: nil)
    }
    
    @IBAction func RefreshView(sender: UIBarButtonItem) {
        //self.CollectionCustomViewController.reloadData()
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
        
        nbplayers = textField.text
        
        // condition testant si la personne a bien rentré un nombre
        if( (nbplayers).toInt()! >= 1 && (nbplayers).toInt()! <= 15) {
            println(nbplayers)
        }
        else {
            nbplayers = "2"
        }
        boinfini = true
        println("Text \((nbplayers).toInt()!) et  Text field: \(textField.text)")
    }))
    
    // 4. Present the alert.
    self.presentViewController(alert, animated: true, completion: nil)
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    /*
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    */

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        
        return (nbplayers).toInt()!
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as UICollectionViewCell
    
        // Configure the cell
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
