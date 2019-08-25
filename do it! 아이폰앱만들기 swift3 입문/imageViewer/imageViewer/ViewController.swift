//
//  ViewController.swift
//  imageViewer
//
//  Created by baby1234 on 11/12/2018.
//  Copyright © 2018 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let imageName = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]
    var imageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: imageName[imageNum])
    }

    @IBAction func btnBefore(_ sender: UIButton) {
        
        imageNum -= 1
        
        if imageNum < 0 {
            imageNum = imageName.count - 1
        }
        
        imageView.image = UIImage(named: imageName[imageNum])
    }
    
    @IBAction func btnAfter(_ sender: UIButton) {
        
        imageNum += 1
        
        if imageNum >= imageName.count{
            imageNum = 0
        }
        
        imageView.image = UIImage(named: imageName[imageNum])
           
    }
}

