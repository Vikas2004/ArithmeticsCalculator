//
//  ArithCalculator.swift
//  ArithmeticsCalculator
//
//  Created by Student on 10/28/20.
//  Copyright © 2020 student. All rights reserved.
//

import Foundation
import UIKit

class ArithCalculator {
    
    private var numArray:[Int]
    private var answer:Int
    
    struct Result{
        var query:String
        var answer:Int
    }
    
    //Array of result structs
    private var Results:[Result]
    
    init(){
        answer = 0
        numArray = []
        Results = []
    }
    
    
  static let shared = ArithCalculator()
    
    
    
    func greatestCommonFactor(a:Int,b:Int) -> Int{
        
        if(a == 0){
            return b;
        }
        return greatestCommonFactor(a:b % a,b:a);
    }
    
    func gcd(a:Int,b:Int) -> Int{
        print("inside gcd function");
        return greatestCommonFactor(a: a, b: b);
    }
    
    
        func leastCommonMultiple(a:Int,b:Int) -> Int{
            
            let lcm:Int = (a*b)/(greatestCommonFactor(a: a, b: b))
            return lcm;
        }
    
    func factorial(num:Int) -> Int{
        
        if (num >= 1){
            return num * factorial(num: num-1);
        }else{
            return 1;
        }
    }
    
    func squareRoot(num:Double) -> Double{
        
        var squareRoot:Double = sqrt(num)
        //In 2 decimal places
        squareRoot = Double(round(100*squareRoot)/100)
        return squareRoot
    }
    

    func history(query:String,answer:Int){
        
        Results.append(Result(query: query, answer: answer));
    }
    
    func results (index:Int) -> Result{
        return Results[index]
    }
    
    func resultsCount() -> Int{
        return Results.count;
    }
    
    
    

}
