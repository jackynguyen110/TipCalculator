//
//  Style.swift
//  TipCalculator
//
//  Created by jacky nguyen on 2/27/16.
//  Copyright © 2016 jacky nguyen. All rights reserved.
//

import UIKit

struct Style {
    static var sectionHeaderTitleFont = UIFont(name: "Helvetica-Bold", size: 20)
    static var sectionHeaderTitleColor = UIColor.whiteColor()
    static var upperBackgroundColor = UIColor.whiteColor()
    static var bottomBackgroundColor = UIColor.grayColor()
    static var sectionHeaderAlpha: CGFloat = 1.0
    
        static func themeGreen(){
            // MARK: ToDo Table Section Headers
            sectionHeaderTitleFont = UIFont(name: "Helvetica", size: 18)
            sectionHeaderTitleColor = UIColor.whiteColor()
            upperBackgroundColor = UIColor.greenColor()
            bottomBackgroundColor = UIColor.grayColor()
            sectionHeaderAlpha = 0.8
        }
    
    static func themeRed(){
        // MARK: ToDo Table Section Headers
        sectionHeaderTitleFont = UIFont(name: "Helvetica", size: 18)
        sectionHeaderTitleColor = UIColor.whiteColor()
        upperBackgroundColor = UIColor.redColor()
        bottomBackgroundColor = UIColor.yellowColor()
        sectionHeaderAlpha = 0.8
    }

    
    static func themeDefault(){
        // MARK: ToDo Table Section Headers
        sectionHeaderTitleFont = UIFont(name: "Helvetica", size: 18)
        sectionHeaderTitleColor = UIColor.whiteColor()
        upperBackgroundColor = UIColor.whiteColor()
        bottomBackgroundColor = UIColor.grayColor()
        sectionHeaderAlpha = 0.8
    }
    
    
}
