//
//  GCDViewController.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/1/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class GCDViewController: UIViewController {
    
    @IBOutlet weak var firstNumTF: UITextField!
    @IBOutlet weak var secondNumTF: UITextField!
    @IBOutlet weak var answerLBL: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        

    }
    
    func alertMessage(title:String, message:String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        ac.addAction(action)
        self.present(ac,animated: true, completion: nil)
    }
    

    @IBAction func calculate(_ sender: Any) {
        
        if (firstNumTF.text != "") && (secondNumTF.text != ""){
            
            if let firstNum = Int(firstNumTF.text!), let secondNum:Int = Int(secondNumTF.text!){
                    let answer:Int = ArithCalculator.shared.greatestCommonFactor(a: firstNum, b: secondNum)
                let answerText: String = "Answer: \(answer)";
                    answerLBL.text = answerText
                
                let query: String = "GCD of two numbers \(firstNum)&\(secondNum)"
                ArithCalculator.shared.history(query: query, answer: answerText)
                    
                
            }else{
                // If user enters invalid value this pop-ups
                print("user entered invalid values")
                alertMessage(title: "Invaid value", message: "Invalid value specified")
            }
            
        }
        else{
            // If user does not enter any value this pop-ups
        print("user not entered values")
            
            alertMessage(title: "No value", message: "No value specified")
        }
    }
    

    
    
}
