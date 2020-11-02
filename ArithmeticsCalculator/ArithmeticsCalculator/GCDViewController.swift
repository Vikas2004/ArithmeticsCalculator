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
    

    @IBAction func calculate(_ sender: Any) {
        
        if (firstNumTF.text != "") && (secondNumTF.text != ""){
            
            if let firstNum = Int(firstNumTF.text!), let secondNum:Int = Int(secondNumTF.text!){
                    let result:Int = ArithCalculator.shared.greatestCommonFactor(a: firstNum, b: secondNum)
                    answerLBL.text = "Answer: \(result)"
                    
                
            }else{
                // If user enters invalid value this pop-ups
                print("user entered invalid values")
                let alertController = UIAlertController(title: "", message: "Invalid value specified", preferredStyle: .alert)

                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(action)
                self.show(alertController, sender: nil)
            }
            
            
        }
        else{
            // If user does not enter any value this pop-ups
        print("user not entered values")
            let alertController = UIAlertController(title: "No value", message: "No value specified", preferredStyle: .alert)

            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(action)
            self.show(alertController, sender: nil)
        }
    }
    
}
