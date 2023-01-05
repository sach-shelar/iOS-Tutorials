//
//  ViewController.swift
//  UIKIT Framework Example
//
//  Created by iMac on 12/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnUIAlertView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnAlertViewOnClick(_ sender: Any) {
        
        let alertView = UIAlertController(title: "Alert", message: "This is an alert view controller example", preferredStyle: UIAlertController.Style.alert)
        
        
        
        self.present(alertView, animated:true,completion: nil)
    }
    
}

