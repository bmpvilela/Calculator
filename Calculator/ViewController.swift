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
	
	// Classes
	let mathService = MathService()
	let myUtils = Utils()
	
	// Vars
    var result = Double()
	var number_1 = Double()
	var operation = String()
	
    var numberString = String()
    
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
		
        // Animate buttons on press
        UIView.animate(withDuration: 0.1 , animations: {
            sender.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
            }, completion: {
                finish in UIView.animate(withDuration: 0.1){
                    sender.transform = CGAffineTransform.identity
                }
        })
        
        // Check wich key as pressed
        if let key = sender.titleLabel?.text {
            switch key {
                case "1","2","3","4","5","6","7","8","9","0":
                    numberString = numberString + key
                    result = Double(numberString)!
                    displayData(result, nil, nil)
				
				case "+","-","*","/":
					if (operation == ""){
						operation = key
						number_1 = result
						clearDisplayString()
						displayData(0, result, operation)
					}
				
                case "+/-":
                    result *= -1
                    displayData(result,result,"-")
                
                case "n!":
                    result = mathService.factorial(result)
                    displayData(result,result,"!")
            
                case "√n":
                    result = mathService.squareroot(result)
                    displayData(result,result,"√")
            
                case "AC":
					operation = ""
                    clearDisplayString()
                    result = mathService.reset()
                    displayData(result, nil, nil)
				
				case "=":
					result = mathService.equal(number_1, result, operation)
					displayData(result, nil, nil)
				
				default:
					operation = ""
					break
				
                //default:
//				if (operation != "") {
//					infoDisplay.text = String(result) + key
//				}else{
//					//infoDisplay.text = String(result)
//				}
            }
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
	
	//Clear the main display aux string
	func clearDisplayString(){
		numberString = ""
		
	}
    
}

