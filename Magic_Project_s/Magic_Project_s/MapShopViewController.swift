//
//  MapShopViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 16/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//
import UIKit
import MapKit
import CoreLocation
import AddressBook

class MapShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //getDirections()
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
    var coords: CLLocationCoordinate2D?
    
    @IBOutlet weak var NameShop: UILabel!

    @IBOutlet weak var Adress: UILabel!
    
    @IBOutlet weak var MapShop: MKMapView!
    
    @IBAction func GoBackbt(sender: UIButton) {
        dismissViewControllerAnimated(true , completion: nil)   
    }
     /* // test de la géocoder adress: position
    func getDirections() {
    
        var address = "1 Infinite Loop, CA, USA"
        var geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address, {(placemarks: [AnyObject]!, error: NSError!) -> Void in
        if let placemark = placemarks?[0] as? CLPlacemark {
        self.Mapcard.addAnnotation(MKPlacemark(placemark: placemark))
        }
        })  */
        
        /*
        let geoCoder = CLGeocoder()
        
        let addressString = "\(restadresse) \(restcity), \(reststate), \(restzip)"
        
        geoCoder.geocodeAddressString(addressString, {(placemarks: [AnyObject]!, error: NSError!) -> Void in
            if let placemark = placemarks?[0] as? CLPlacemark {
                self.Mapcard.addAnnotation(MKPlacemark(placemark: placemark))
                self.showMap()
                
            }
        })
        
    }
    func showMap() {
        let addressDict =
        [kABPersonAddressStreetKey as NSString: restadresse,
            kABPersonAddressCityKey: restcity,
            kABPersonAddressStateKey: reststate,
            kABPersonAddressZIPKey: restzip]
        
        let place = MKPlacemark(coordinate: coords!,
            addressDictionary: addressDict)
        
        let mapItem = MKMapItem(placemark: place)
        
        let options = [MKLaunchOptionsDirectionsModeKey:
        MKLaunchOptionsDirectionsModeDriving]
        
        mapItem.openInMapsWithLaunchOptions(options)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    } */

}
