//
//  ViewController.swift
//  KefCustomUIElements
//
//  Created by Franks, Kent on 12/15/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: KefTextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.text = "Hannah"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAction(sender: AnyObject) {
        print("button touched")
        textLabel.text = emailTextField.text
    }
}

