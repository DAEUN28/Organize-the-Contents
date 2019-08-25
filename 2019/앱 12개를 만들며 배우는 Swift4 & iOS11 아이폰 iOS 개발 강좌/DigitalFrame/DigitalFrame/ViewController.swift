//
//  ViewController.swift
//  DigitalFrame
//
//  Created by baby1234 on 14/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!,
                          UIImage(named: "6.jpg")!,
                          UIImage(named: "7.jpg")!,
                          UIImage(named: "8.jpg")!,
                          UIImage(named: "9.jpg")!,
                          UIImage(named: "10.jpg")!,
                          UIImage(named: "11.jpg")!,
                          UIImage(named: "12.jpg")!,
                          UIImage(named: "13.jpg")!,
                          UIImage(named: "14.jpg")!,
                          UIImage(named: "15.jpg")!
                          ]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }

    @IBAction func toggleButton(_ sender: UIButton) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal )
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal )
        }
    }
    
    @IBAction func speedSliderAction(_ sender: UISlider) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal )
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
}

