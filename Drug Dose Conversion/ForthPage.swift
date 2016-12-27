//
//  ForthPage.swift
//  Drug Dose Conversion
//
//  Created by Anan Lappikulthong on 12/27/16.
//  Copyright © 2016 Anan Lappikulthong. All rights reserved.
//

import UIKit

class ForthPage: UIViewController {
    
    @IBOutlet weak var ratePage4Txt: UITextField!
    @IBOutlet weak var dosePage4Txt: UITextField!
    @IBOutlet weak var volumePage4Txt: UITextField!
    
    @IBOutlet weak var resultPage4Txt: UILabel!
    
    var IVRatePage4 = 0.00
    var mgPage4 = 0.00
    var mLPage4 = 0.00

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToFirstPage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func calcultePage4BtnPressed(_ sender: Any) {
        
        if ratePage4Txt.text == "" || dosePage4Txt.text == "" || volumePage4Txt.text == "" {
            resultPage4Txt.text = ""
        } else if ratePage4Txt.text != nil && dosePage4Txt.text != nil && volumePage4Txt.text != nil {
            IVRatePage4 = Double(ratePage4Txt.text!)!
            mgPage4 = Double(dosePage4Txt.text!)!
            mLPage4 = Double(volumePage4Txt.text!)!
            resultPage4Txt.text = "\(IVRatePage4  * mgPage4 * 100 / mLPage4 / 6)"
        }
        
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        
        ratePage4Txt.text = ""
        dosePage4Txt.text = ""
        volumePage4Txt.text = ""
        resultPage4Txt.text = ""
        
    }

}
