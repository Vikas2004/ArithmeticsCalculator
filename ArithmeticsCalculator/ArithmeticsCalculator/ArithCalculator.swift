//
//  ArithCalculator.swift
//  ArithmeticsCalculator
//
//  Created by Student on 10/28/20.
//  Copyright © 2020 student. All rights reserved.
//

import Foundation
import UIKit

// The ArithCalculator Class
class ArithCalculator {
    
    // Variable declarations
    private var numArray:[Int]
    private var answer:Int
    
    //Struct of results
    struct Result{
        var query:String
        var answer:String
    }
    
    //Array of result structs
    private var Results:[Result]
    
    //Initialization of the variables
    init(){
        answer = 0
        numArray = []
        Results = []
    }
    
    // using immutable variable shared for the function of ArithCalculator
    static let shared = ArithCalculator()
    
    // The gereatestCommonFactor function to find the GCD of the number
    
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
    
    // The leastCommonMultiple function
    func leastCommonMultiple(a:Int,b:Int) -> Int{
            
        let lcm:Int = (a*b)/(greatestCommonFactor(a: a, b: b))
        return lcm;
    }
    
    // the Factorial function
    func factorial(num:Int) -> Int64{
        
        // output is long number
        var out:Int64 = 1;
        
        // zero factorial is 1
        if(num == 0){
            return out;
        }
        
        for n in 1...num {
            out = out * Int64(n);
        }
        
        return out;
        
    }
    
    // The squareRoot function
    func squareRoot(num:Double) -> Double{
        
        var squareRoot:Double = sqrt(num)
        //In 2 decimal places
        squareRoot = Double(round(100*squareRoot)/100)
        return squareRoot
    }
    
    // The history function
    func history(query:String,answer:String){
        
        Results.append(Result(query: query, answer: answer));
    }
    
    // The function for results
    func results (index:Int) -> Result{
        return Results[index]
    }
    
    func resultsCount() -> Int{
        return Results.count;
    }
    
    
    

}
