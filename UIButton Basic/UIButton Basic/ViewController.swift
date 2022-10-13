//
//  ViewController.swift
//  UIButton Basic
//
//  Created by iMac on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpleButton: UIButton!
    
    @IBOutlet weak var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
        setMessageToLable(message: "Click on button to show message")
    }
    
    
    func configureUI(){
        simpleButton.layer.cornerRadius = 10
        
        simpleButton.layer.borderWidth = 3
        simpleButton.layer.borderColor = UIColor.green.cgColor
    }

    @IBAction func simpleButtonOnClick(_ sender: Any) {
        setMessageToLable(message: "Registration Successfull")
        let secondVc = (self.storyboard?.instantiateViewController(identifier: "second" ))! as SecondViewController
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
    
    func setMessageToLable(message: String){
        lblMessage.text = message
    }
    
}

