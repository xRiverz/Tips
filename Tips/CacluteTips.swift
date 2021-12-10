//
//  CacluteTips.swift
//  Tips
//
//  Created by admin on 09/12/2021.
//

import Foundation
import UIKit

class CacluteTips : UIViewController {
    
    @IBOutlet weak var enterAmount: UITextField!
    @IBOutlet weak var tip : UILabel!
    @IBOutlet weak var tipSlider : UISlider!
    @IBOutlet weak var eachSlider : UISlider!
    @IBOutlet weak var each : UILabel!
    @IBOutlet weak var eachAmountLabel : UILabel!
    @IBOutlet weak var totalAmountLabel : UILabel!
    
    var tipCaculate = TipCalculator(amountBeforeTax: 0, tipPrecentage: 0.10)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        enterAmount.becomeFirstResponder()
    }
    
    func CalcuareBill(){
        tipCaculate.tipAmount = Double(tipSlider.value) / 100.0
        tipCaculate.amountBeforeTax = (enterAmount.text! as NSString).doubleValue
        tipCaculate.CaculateTip()
        updateUI()
    }
    
    func updateUI(){
        totalAmountLabel.text = String(format: "$%0.2f", tipCaculate.total)
        let numberofppl : Int = Int(eachSlider.value)
        eachAmountLabel.text = String(format: "$%0.2f", tipCaculate.total / Double(numberofppl))
    }
    
    
    
    //Action
    @IBAction func slidertipChange (sender : Any){
        tip.text = String(format: "Tip : %02d%%", Int(tipSlider.value ))
        CalcuareBill()
    }
    
    @IBAction func slidereachChange (sender : Any){
        each.text = "Split : \(Int(eachSlider.value))"
        CalcuareBill()
    }
    
    @IBAction func amountBeforeChange (sender : Any){
        CalcuareBill()
    }
}
