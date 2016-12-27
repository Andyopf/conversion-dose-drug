//
//  SecondPage.swift
//  Drug Dose Conversion
//
//  Created by Anan Lappikulthong on 12/27/16.
//  Copyright © 2016 Anan Lappikulthong. All rights reserved.
//

import UIKit

class SecondPage: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ivRateMlHourTxt: UITextField!
    @IBOutlet weak var weightTxt: UITextField!
    @IBOutlet weak var doseTxt: UITextField!
    @IBOutlet weak var mlAvailableTxt: UITextField!
    
    @IBOutlet weak var resultMcgPerKgPerMinLbl: UILabel!
    
    var rateIV = 0.00
    var kilogram = 0.00
    var doseAvailable = 0.00
    var solventML = 0.00
    var resultDoseDrug1 = 0.00
    var resultDoseDrug2 = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
    
    // Functions
    
    func convertTextToNumber() {
        rateIV = Double(ivRateMlHourTxt.text!)!
        doseAvailable = Double(doseTxt.text!)!
        kilogram = Double(weightTxt.text!)!
        solventML = Double(mlAvailableTxt.text!)!
    }
    
    //Buttons
    
    @IBAction func BacktoFirstPagePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        ivRateMlHourTxt.text = ""
        weightTxt.text = ""
        doseTxt.text = ""
        mlAvailableTxt.text = ""
        resultMcgPerKgPerMinLbl.text = ""
        
    }
    
    @IBAction func calculateBtnPressed(_ sender: Any) {
        if ivRateMlHourTxt.text == "" || weightTxt.text == "" || doseTxt.text == "" || mlAvailableTxt.text == "" {
            resultMcgPerKgPerMinLbl.text = ""
        } else if ivRateMlHourTxt != nil && weightTxt != nil && doseTxt != nil && mlAvailableTxt != nil {
            convertTextToNumber()
            let resultDoseDrug1 = rateIV * doseAvailable * 100
            let resultDoseDrug2 = solventML * kilogram * 6
            resultMcgPerKgPerMinLbl.text = "\(resultDoseDrug1 / resultDoseDrug2)"
        } else {
            print("error")
        }
        
    }

}
