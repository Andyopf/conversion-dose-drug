//
//  BasicView.swift
//  Drug Dose Conversion
//
//  Created by Anan Lappikulthong on 12/27/16.
//  Copyright © 2016 Anan Lappikulthong. All rights reserved.
//

import UIKit

class BasicView: UIView {

    override func awakeFromNib() {
        
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).cgColor
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
    }

}
