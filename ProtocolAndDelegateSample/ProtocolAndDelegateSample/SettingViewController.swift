//
//  SettingViewController.swift
//  ProtocolAndDelegateSample
//
//  Created by iMac on 10/14/22.
//

import Foundation
import UIKit

class SettingController : UIViewController {
    
    var delegate: LanguageChangeDelegate?
    
    
    @IBAction func btnEnglishOnClick(_ sender: UIButton) {
        
            delegate?.changeIndex(index: 0)
        self.dismiss(animated: true,completion: nil)
        
    }
    
    
    @IBAction func btnSpannishOnClick(_ sender: UIButton) {
       
            delegate?.changeIndex(index: 1)
        self.dismiss(animated: true,completion: nil)
        
    }
    
}
