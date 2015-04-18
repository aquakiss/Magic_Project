//
//  ViewController.swift
//  Magic_Project_s
//
//  Created by Developer on 04/04/2015.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var ScBar: UISearchBar!
    @IBOutlet weak var Webviewcard: UIWebView!
    //if rechercher
    // prendre la valeur de la seaerch bar
    
    var URLpath : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BtSearchcard(sender: UIButton) {
        if(ScBar.text != ""){
            URLpath = "http://www.magiccorporation.com/mc.php?rub=cartes&op=search&search=2&word=" + (ScBar.text)
            println(URLpath)
            let requestURL = NSURL(string:URLpath)
            let request = NSURLRequest(URL:requestURL!)
            Webviewcard.loadRequest(request)
        
        }
    }
}

