//
//  Math.swift
//  Calculator
//
//  Created by Bruno Vilela on 11/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import Foundation

class MathService{
    
    var result : Int = 0
    
    func add(number_1: Int, number_2: Int) -> Int{
        return self.result
    }
    
    func factorial(_ number: Double) -> (Double) {
        if (number <= 1) {
            return 1
        }
        return number * factorial(number - 1)
    }
    
}
