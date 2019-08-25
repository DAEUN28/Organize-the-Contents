//
//  DetailViewController.swift
//  CustomCell
//
//  Created by baby1234 on 22/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var detaildata = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
        
        nameLabel.text = detaildata["name"]
        nameLabel.textColor = UIColor.white
        amountLabel.text = detaildata["amount"]
        amountLabel.textColor = UIColor.white
        valueLabel.text = detaildata["value"]
        valueLabel.textColor = UIColor.white
        
        imgView.image = UIImage(named:detaildata["image"]! )
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
