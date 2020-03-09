//
//  MutlicolorFont.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//


import UIKit

struct FormattedString {
    static func turnMyTextIntoColorText(_ plainStr: String) -> NSAttributedString {
        
        let colours = [#colorLiteral(red: 0.224568516, green: 0.3103039563, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0.6664901376, blue: 1, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 0, green: 0.2867515981, blue: 0.442538023, alpha: 1), UIColor.cyan, #colorLiteral(red: 0.1107549742, green: 0.1741392016, blue: 0.7766273022, alpha: 1), #colorLiteral(red: 0, green: 0.7402777672, blue: 0.7530685067, alpha: 1)]
        
        let mutableString: NSMutableAttributedString = NSMutableAttributedString(string: plainStr)
        
        for (index,_) in plainStr.enumerated(){
            let range = NSMakeRange(index, 1)
            let outdex: UIColor = colours[index % colours.count]
            mutableString.addAttribute(.foregroundColor, value: outdex, range: range)
        }
        return mutableString
    }
}
