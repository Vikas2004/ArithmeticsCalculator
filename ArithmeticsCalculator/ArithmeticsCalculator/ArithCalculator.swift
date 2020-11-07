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
    private var answer:Int64
    
    struct result{
        var numArray:[Int]
        var answer:Int64
    }
    
    //Array of result structs
    private var results:[result]
    
    init(){
        answer = 0
        numArray = []
        results = []
    }
    
    
  static let shared = ArithCalculator()
    
    
    
    func greatestCommonFactor(a:Int,b:Int) -> Int{
        
        if(a == 0){
            return b;
        }
        return greatestCommonFactor(a:b % a,b:a);
    }
    
    
//    func gcdArray() -> Int{
//        var res:Int = numArray[0];
//        for i in stride(from: 1, to:  numArray.count, by: 1){
//            res = greatestCommonFactor(a:numArray[i],b:res);
//            if(res == 1){
//                return 1;
//            }
//        }
//        return res;
//    }
    
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
}
