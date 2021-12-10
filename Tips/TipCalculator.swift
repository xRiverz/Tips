//
//  tipCaculatfile.swift
//  Tips
//
//  Created by admin on 09/12/2021.
//

import Foundation

class TipCalculator{
    var amountBeforeTax : Double = 0
    var tipAmount : Double = 0
    var tipPrecentage : Double = 0
    var total : Double = 0
    
    init(amountBeforeTax : Double, tipPrecentage : Double){
        self.amountBeforeTax = amountBeforeTax
        self.tipPrecentage = tipPrecentage
    }
    
    func CaculateTip(){
        tipAmount = amountBeforeTax * tipPrecentage
        total = tipAmount + amountBeforeTax
    }
}
