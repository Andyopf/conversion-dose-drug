//
//  DoseButton.swift
//  Drug Dose Conversion
//
//  Created by Anan Lappikulthong on 12/27/16.
//  Copyright © 2016 Anan Lappikulthong. All rights reserved.
//

import UIKit

class DoseButton: UIButton {
    
    override func awakeFromNib() {
        
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).cgColor
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.8
    
    }

}
