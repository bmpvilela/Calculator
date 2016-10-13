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
    func add(_ number_1: Double,_ number_2: Double) -> Double {
        
        return (number_1 + number_2)
    }
	
	// Subtract two numbers
	func subtract(_ number_1: Double,_ number_2: Double) -> Double {
		
		return (number_1 - number_2)
	}
	
	// Subtract two numbers
	func multiply(_ number_1: Double,_ number_2: Double) -> Double {
		
		return (number_1 * number_2)
	}
	
	// Subtract two numbers
	func divide(_ number_1: Double,_ number_2: Double) -> Double {
		
		return (number_1 / number_2)
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
	
	//Power
	func power(_ number_1: Double,_ number_2: Double) -> Double{
	
		if (number_2 <= 0){
			return 1
		}
		
		return number_1 * power (number_1, number_2 - 1)
	}
	
    // Reset
    func reset() -> Double{
        return 0
    }
	
	// Equal
	func equal(_ number_1: Double,_ number_2: Double,_ operation: String) -> Double {
		
		switch (operation){
		
			case "+":
				result = add(number_1, number_2)
			
			case "-":
				result = subtract(number_1, number_2)
			
			case "*":
				result = multiply(number_1, number_2)
			
			case "/":
				result = divide(number_1, number_2)
			
			case "n^p":
				result = power(number_1, number_2)
			
			default:
				break
			
		}
		
		return result
	}
    
}
