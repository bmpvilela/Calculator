//
//  Math.swift
//  Calculator
//
//  Created by Bruno Vilela on 11/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import Foundation

// Math service calculator
class MathService{
    
    var result : Double = 0
    
    // Add two numbers
    func add(number_1: Int, number_2: Int) -> Double {
        
        return self.result
    }
    
    // Factorial
    func factorial(_ number: Double) -> Double {
        
        if (number <= 1) {
            return 1
        }
        
        return number * factorial(number - 1)
    }
    
    // Quareroot
    func squareroot (_ number: Double) -> Double {
        
        return sqrt(number)
    }
    
    //Reset
    func reset() -> Double{
        return 0
    }
    
}
