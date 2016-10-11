//
//  ViewController.swift
//  Calculator
//
//  Created by Bruno Vilela on 07/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UITextField!
    @IBOutlet weak var infoDisplay: UITextField!
    @IBOutlet weak var floatButton: UISwitch!
    
    var result = Double()
    var numberString = String()
    
    let mathService = MathService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setFloatStatus(_ sender: UISwitch) {
        if floatButton.isOn == true{
            display.text = String(result)
            infoDisplay.text = String(result)
        } else{
            display.text = String(Int(result))
            infoDisplay.text = String(Int(result))
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        numberString = "0"
        result = Double(numberString)!
        display.text = String(result)
        infoDisplay.text = ""
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        if let key = sender.titleLabel?.text {
            switch key {
            case "1","2","3","4","5","6","7","8","9","0" :
                numberString = numberString + key
                result = Double(numberString)!
                infoDisplay.text = String(result)
            
            case "+/-":
                result *= -1
                
            case "n!":
                result = mathService.factorial(result)
                
            default:
                infoDisplay.text = String(result) + key
            }
            
            if floatButton.isOn == true{
                display.text = String(result)
            } else{
                display.text = String(Int(result))
            }
            
        }
        else {
            // sender.titleLabel.text is nil
        }
    }
}

