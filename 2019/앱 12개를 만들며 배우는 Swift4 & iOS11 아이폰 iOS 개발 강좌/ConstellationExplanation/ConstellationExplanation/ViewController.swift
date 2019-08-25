//
//  ViewController.swift
//  ConstellationExplanation
//
//  Created by baby1234 on 24/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func backButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true )
    }
    
}

