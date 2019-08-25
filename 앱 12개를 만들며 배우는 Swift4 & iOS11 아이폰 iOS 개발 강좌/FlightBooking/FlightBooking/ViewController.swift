//
//  ViewController.swift
//  FlightBooking
//
//  Created by baby1234 on 18/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateLable: UILabel!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    
    var buttonTag = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLable.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }

    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false{
            selectDatePicker.isHidden = true
        }else{
            selectDatePicker.isHidden = false
        }
        
        buttonTag = sender.tag
    }
    
    @IBAction func showReturnDateAction(_ sender: UISwitch) { 
//        if sender.isOn{
//            returnDateButton.isHidden = false
//            returnDateLable.isHidden = false
//        }else{
//            returnDateButton.isHidden = true
//            returnDateLable.isHidden = true 
//        }
        
        returnDateButton.isHidden = !sender.isOn
        returnDateLable.isHidden = !sender.isOn
    }
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        let dateString = formatter.string(from: sender.date)
        
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControl.State.normal)
        }else{
            returnDateButton.setTitle(dateString, for: UIControl.State.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden =  true
    }
    
}

