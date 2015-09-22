//
//  ViewController.swift
//  Example
//
//  Created by matt on 22/09/2015.
//  Copyright © 2015 Matthew Green Associates. All rights reserved.
//

import UIKit
import MGAUIKit

class ViewController: UIViewController {

    let textField = MGATextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.frame = CGRectMake(20, 50, 100, 40)
        textField.borderColor = UIColor.greenColor()
        textField.borderWidth = 2
        textField.cornerRadius = 5
        self.view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

