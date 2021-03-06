//
//  GCDViewController.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/1/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class GCDViewController: UIViewController {
    
    // The UI textfields and UIlablel
    @IBOutlet weak var firstNumTF: UITextField!
    @IBOutlet weak var secondNumTF: UITextField!
    @IBOutlet weak var answerLBL: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        

    }
    
    // Alert Message function to display the alert Message
    func alertMessage(title:String, message:String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        ac.addAction(action)
        self.present(ac,animated: true, completion: nil)
    }
    
// The calculate function for the calculate button
    @IBAction func calculate(_ sender: Any) {
        
        if (firstNumTF.text != "") && (secondNumTF.text != ""){
            
            if let firstNum = Int(firstNumTF.text!), let secondNum:Int = Int(secondNumTF.text!){
                
                let answer:Int = ArithCalculator.shared.greatestCommonFactor(a: firstNum, b: secondNum)
                
                let answerText: String = "Answer: \(answer)";
                    answerLBL.text = answerText
                
                let query: String = "GCD of two numbers \(firstNum)&\(secondNum)"
                // Storing data to history
                ArithCalculator.shared.history(query: query, answer: answerText)
                    
                
            }else{
                // If user enters invalid value this alert pop-ups
                alertMessage(title: "Invaid value", message: "Invalid value specified")
            }
            
        }
        else{
            // If user does not enter any value this  alert pop-ups
            alertMessage(title: "No value", message: "No value specified")
        }
    }
    

    
    
}
