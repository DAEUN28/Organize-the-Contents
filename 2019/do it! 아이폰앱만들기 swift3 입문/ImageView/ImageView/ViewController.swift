//
//  ViewController.swift
//  ImageView
//
//  Created by baby1234 on 10/12/2018.
//  Copyright © 2018 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgoff: UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgoff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }


    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("확대", for: .normal)
        }
        
        else{
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("축소", for: .normal)
        }
        
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image = imgOn
        }else{
            imgView.image = imgoff
        }
    }
}

