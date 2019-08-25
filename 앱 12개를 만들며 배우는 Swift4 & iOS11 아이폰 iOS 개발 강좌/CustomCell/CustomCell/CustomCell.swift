//
//  CustomCell.swift
//  CustomCell
//
//  Created by baby1234 on 22/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgView.contentMode = UIView.ContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
