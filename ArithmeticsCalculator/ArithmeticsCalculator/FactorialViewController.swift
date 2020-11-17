//
//  FactorialViewController.swift
//  ArithmeticsCalculator
//
//  Created by Student on 11/7/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class FactorialViewController: UIViewController {

    @IBOutlet weak var numTF: UITextField!
    @IBOutlet weak var answerLBL: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func alertMessage(title:String, message:String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        ac.addAction(action)
        self.present(ac,animated: true, completion: nil)
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        
        if (numTF.text != ""){
            
            if let num = Int(numTF.text!){
                let answer:Int = ArithCalculator.shared.factorial(num: num)
                
                
                    answerLBL.text = "Answer: \(answer)"
                
                let query: String = "Factorial of  \(num)"
                ArithCalculator.shared.history(query: query, answer: answer)
                    
                
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
