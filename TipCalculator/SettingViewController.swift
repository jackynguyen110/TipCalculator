
//
//  SettingViewController.swift
//  TipCalculator
//
//  Created by jacky nguyen on 2/26/16.
//  Copyright © 2016 jacky nguyen. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var selectTheme: UISegmentedControl!
    
    @IBOutlet weak var defaultPercent: UISegmentedControl!
    let settingValue = NSUserDefaults.standardUserDefaults()

    var themeIndex:Int!
    var percentIndex:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let theme = settingValue.objectForKey("theme") {
            selectTheme.selectedSegmentIndex = theme as! Int
        }
        if let percent = settingValue.objectForKey("percent") {
            defaultPercent.selectedSegmentIndex = percent as! Int
        }
        
    }

    @IBAction func cancelSetting(sender: AnyObject) {
         self.navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func saveSetting(sender: AnyObject) {
       
        themeIndex = selectTheme.selectedSegmentIndex
        
        percentIndex = defaultPercent.selectedSegmentIndex
        
        settingValue.setObject(themeIndex, forKey: "theme")
        settingValue.setObject(percentIndex, forKey: "percent")
        
        settingValue.synchronize()
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
