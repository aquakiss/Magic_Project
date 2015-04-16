//
//  ShopViewControllerTable.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class ShopViewControllerTable: UITableViewController {
    
    var listsho : ShopList = ShopList()
    var shoparray : [Shop]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoparray = listsho.shopArray()
        
        let tmp : Shop = Shop(name: "JoBar", adr: "33000, bdx", dejavisit: false)
        
        println(tmp.ToString())
        listsho.addShop(tmp)
        println(listsho.shopcount())
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
*/
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return listsho.shopArray().count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellShop", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        
        println(indexPath.row)
        var i : Int = indexPath.row
        var shopa : Shop  = listsho.shopAtIndex(i)
        cell.textLabel.text? = shopa.nom
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "GoToAddShop"){
            var destiViewController = segue.destinationViewController as FormuShopViewController
            destiViewController.newshoplist = self.listsho
        }
        else if(segue.identifier == "GotoGeolocS"){
            var destinaViewController = segue.destinationViewController as MapShopViewController
            let send = sender as UITableViewCell? //récupere la cell
            let inde = tableView.indexPathForCell(send!)?.row //recupere l'index de la cell
            destinaViewController.title = "n*\(inde!) \(shoparray[inde!].nom)"  // affiche en titre l'index de la cell
            
            destinaViewController.shoplit = self.listsho
            destinaViewController.index = inde
        }
    }
    

}
