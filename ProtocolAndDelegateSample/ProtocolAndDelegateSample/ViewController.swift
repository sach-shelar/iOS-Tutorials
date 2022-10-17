//
//  ViewController.swift
//  ProtocolAndDelegateSample
//
//  Created by iMac on 10/14/22.
//

import UIKit

class ViewController: UIViewController, LanguageChangeDelegate {
    func changeIndex(index: Int) {
        displayValueBasedOnIndex(index: index)
    }
    
    
    
    let headingArray = ["Together and Sancho Panza","Junts y Sancho Panza"]
    
    let detailsArray = ["In this context, Junts only has to continue digging into the trenches of anti-politics with a populist discourse","En este contexto, a Junts solo le queda seguir cavando en las trincheras de la antipolítica con un discurso populista"
    ]
    
 
    @IBOutlet weak var txtTItle: UILabel!
    
    @IBOutlet weak var txtMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayValueBasedOnIndex(index: 0)
        
    }
    
    func displayValueBasedOnIndex(index: Int){
        txtTItle.text = headingArray[index]
        txtMessage.text = detailsArray[index]
    }
    
    
    @IBAction func btnTap(_ sender: UIButton) {
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "setting_controller") as! SettingController
            controller.delegate = self
            controller.modalPresentationStyle = .fullScreen
            present(controller, animated:true,completion: nil)
            
    }
    
    

    
}

