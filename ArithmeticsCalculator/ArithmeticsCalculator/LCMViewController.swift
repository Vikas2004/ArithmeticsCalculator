//
//  LCMViewController.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/7/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

// View Controller of LCM
class LCMViewController: UIViewController {
    
    // The UITextfields and UILabel declarations
    @IBOutlet weak var firstNumTF: UITextField!
    @IBOutlet weak var secondNumTF: UITextField!
    @IBOutlet weak var answerLBL: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //The alertMessage function
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
                let answer:Int = ArithCalculator.shared.leastCommonMultiple(a: firstNum, b: secondNum)

                let answerText: String = "Answer: \(answer)";
                    answerLBL.text = answerText
                
                let query: String = "LCM of two numbers \(firstNum)&\(secondNum)"
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
