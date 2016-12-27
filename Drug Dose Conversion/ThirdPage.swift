//
//  ThirdPage.swift
//  Drug Dose Conversion
//
//  Created by Anan Lappikulthong on 12/27/16.
//  Copyright © 2016 Anan Lappikulthong. All rights reserved.
//

import UIKit

class ThirdPage: UIViewController {
    
    @IBOutlet weak var ratePage3Txt: UITextField!
    @IBOutlet weak var dosePage3Txt: UITextField!
    @IBOutlet weak var volumPate3Txt: UITextField!
    
    @IBOutlet weak var resultPage3Lbl: UILabel!
    
    var IVRatePage3 = 0.00
    var page3Dose = 0.00
    var mLPage3 = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backToFirstPage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func calculateBtnPage3Pressed(_ sender: Any) {
        
        if ratePage3Txt.text == "" || dosePage3Txt.text == "" || volumPate3Txt.text == "" {
            resultPage3Lbl.text = ""
        } else if ratePage3Txt.text != nil && dosePage3Txt.text != nil && volumPate3Txt.text != nil {
            
            IVRatePage3 = Double(ratePage3Txt.text!)!
            page3Dose = Double(dosePage3Txt.text!)!
            mLPage3 = Double(volumPate3Txt.text!)!
            resultPage3Lbl.text = "\(IVRatePage3 * page3Dose / mLPage3)"
            
        }
    }
    
    @IBAction func resetPate3Pressed(_ sender: Any) {
        ratePage3Txt.text = ""
        dosePage3Txt.text = ""
        volumPate3Txt.text = ""
        resultPage3Lbl.text = ""
    }
}
