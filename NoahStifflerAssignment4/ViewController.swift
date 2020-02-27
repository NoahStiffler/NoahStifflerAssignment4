//
//  ViewController.swift
//  NoahStifflerAssignment4
//
//  Created by Noah Stiffler on 2/24/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    
 
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    
    
    // Thank God for stack overflow...
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "WARNING!", message: "This is a cat themed application... As a joke of course... Please dont think any less of me.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Yikes!", comment: "Default action"), style: .`default`, handler: { _ in }))
        
        self.present(alert,animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func initialAlert(_ sender: Any) {
            
        
        
    }


}

}
