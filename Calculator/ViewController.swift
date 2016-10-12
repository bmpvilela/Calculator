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
    
    var result = Double()
    var numberString = String()
    
    let mathService = MathService()
    let myUtils = Utils()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reset(_ sender: UIButton) {
        result = 0
        displayData(result, nil, nil)
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.1 , animations: {
            sender.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
            }, completion: {
                finish in UIView.animate(withDuration: 0.1){
                    sender.transform = CGAffineTransform.identity
                }
        })
        
        
        if let key = sender.titleLabel?.text {
            switch key {
            case "1","2","3","4","5","6","7","8","9","0" :
                
                numberString = numberString + key
                result = Double(numberString)!
                //infoDisplay.text = String(result)
                displayData(result, nil, nil)
            
            case "+/-":
                result *= -1
                
            case "n!":
                result = mathService.factorial(result)
                displayData(result,result,"!")
            
            case "√n":
                result = mathService.squareroot(result)
                displayData(result,result,"√")
            
            case "AC":
                numberString = ""
                result = 0
                displayData(result, nil, nil)
                
                
            default:
                infoDisplay.text = String(result) + key
            }
            
        }
        else {
            // sender.titleLabel.text is nil
        }
    }
    
    // Send values to calculator displays
    func displayData (_ mainDisplay: Double,_ secondDisplay: Double?,_ operation: String?){
        
        display.text = String(mainDisplay)
        
        if (secondDisplay == nil){
            infoDisplay.text = String(mainDisplay)
        }
        
        if (operation != nil){
            infoDisplay.text = infoDisplay.text! + operation!
        }
        
    }
    
}

