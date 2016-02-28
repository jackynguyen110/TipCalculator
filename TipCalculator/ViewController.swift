//
//  ViewController.swift
//  TipCalculator
//
//  Created by jacky nguyen on 2/26/16.
//  Copyright © 2016 jacky nguyen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var percentSegment: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var upperView: UIView!

    @IBOutlet weak var bottomView: UIView!
    
    var selectTheme:Int!
    
    let settingValue = NSUserDefaults.standardUserDefaults()
    
    @IBAction func onEditingChanged(sender: AnyObject) {
       
        calTipAndTotal()
        
    }
    @IBAction func valueChanged(sender: AnyObject) {
        calTipAndTotal()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    func calTipAndTotal() {
        
        var tipPercent = [0.1, 0.15, 0.2]
        
        let percent = tipPercent[percentSegment.selectedSegmentIndex]
        
        
        let billAmount = NSString(string:billField.text!).doubleValue
        
        
        let tip = billAmount * percent
        
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadSetting()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        LoadSetting()
           }
    
    func LoadSetting() {
        if let theme = settingValue.stringForKey("theme") {
            
            if theme == "0" { Style.themeDefault() }
            if theme == "1" { Style.themeGreen() }
            if theme == "2" { Style.themeRed() }
        } else {
            Style.themeDefault()
        }
        
        self.upperView.backgroundColor = Style.upperBackgroundColor
        self.bottomView.backgroundColor = Style.bottomBackgroundColor
        
        if let percent = settingValue.objectForKey("percent"){
            percentSegment.selectedSegmentIndex = percent as! Int
            
        }
        
        calTipAndTotal()

    }
    
    


}

