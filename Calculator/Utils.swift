//
//  Utils.swift
//  Calculator
//
//  Created by Bruno Vilela on 11/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import Foundation

// Some aditional tools
class Utils{

    // Converts a string in a int
    // with signed number check
    func strToInt(_ str: String) -> Int{
    
        var index: Int = 0
        var num: Int = 0
        var isNegative: Bool = false
        
        if str.characters.first == "-" {
            index = 1
            isNegative = true
        }
        
        while (index < str.characters.count){
            num *= 10
            num += Int(String(str[str.index(str.startIndex, offsetBy: index)]))!
        }
        
        if (isNegative){
            num = -num
        }
        
        return num
    }
	
	func removeLastChar(_ str: String) -> String {
		
		return str.substring(to: str.index(before: str.endIndex))
		
	}
    
}
