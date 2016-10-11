//
//  Utils.swift
//  Calculator
//
//  Created by Bruno Vilela on 11/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import Foundation

class Utils{

    
    func strToInt(str: String) -> Int{
    
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
    
    
//    public static int strToInt( String str ){
//    int i = 0;
//    int num = 0;
//    boolean isNeg = false;
//    
//    //Check for negative sign; if it's there, set the isNeg flag
//    if (str.charAt(0) == '-') {
//    isNeg = true;
//    i = 1;
//    }
//    
//    //Process each character of the string;
//    while( i < str.length()) {
//    num *= 10;
//    num += str.charAt(i++) - '0'; //Minus the ASCII code of '0' to get the value of the charAt(i++).
//    }
//    
//    if (isNeg)
//    num = -num;
//    return

}
