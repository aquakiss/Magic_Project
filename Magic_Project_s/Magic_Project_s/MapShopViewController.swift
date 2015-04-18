//
//  MapShopViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//
import MapKit
import UIKit

class MapShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var ship = shoplit.shopAtIndex(indexo)
        NameShop.text = ship.nom
        Adress.text = ship.ReturnAdresse()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var shoplit : ShopList!
    var indexo : Int!
    
    @IBOutlet weak var NameShop: UILabel!

    @IBOutlet weak var Adress: UILabel!
    
    @IBOutlet weak var MapShop: MKMapView!
    
    @IBAction func GoBackbt(sender: UIButton) {
        dismissViewControllerAnimated(true , completion: nil)   
    }
    
    var address = "1 Infinite Loop, CA, USA"
    var geocoder = CLGeocoder()
   /* geocoder.geocodeAddressString(address, {(placemarks: [AnyObject]!, error: NSError!) -> Void in
    if let placemark = placemarks?[0] as? CLPlacemark {
    self.mapView.addAnnotation(MKPlacemark(placemark: placemark))
    }
    })
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
