//
//  ViewController.swift
//  HelloWorld
//
//  Created by baby1234 on 10/12/2018.
//  Copyright © 2018 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
}

