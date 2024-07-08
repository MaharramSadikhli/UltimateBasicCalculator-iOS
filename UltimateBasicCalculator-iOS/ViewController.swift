//
//  ViewController.swift
//  UltimateBasicCalculator-iOS
//
//  Created by Maharram SADIKHLI on 8.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumText: UITextField!
    
    @IBOutlet weak var secondNumText: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    // Converter Strimg to Double
    func converterToDouble (num: UITextField) -> Double? {
        
        return if let text = num.text,
        let textInt = Double(text) {
            Double(text)
        } else {
            nil
        }
    }
    
    
    // Controler for Nullables
    func controlNums() -> Bool {
        
        return if ( converterToDouble(num: firstNumText) != nil && converterToDouble(num: secondNumText) != nil) { true } else { false }
        
    }
    
    
    // Getter Operations
    func getOperation (operation: String) -> String {
        return if controlNums() {
            switch operation {
            case "*":
                String((converterToDouble(num: firstNumText)!) * (converterToDouble(num: secondNumText)!))
            case "/":
                String((converterToDouble(num: firstNumText)!) / (converterToDouble(num: secondNumText)!))
            case "+":
                String((converterToDouble(num: firstNumText)!) + (converterToDouble(num: secondNumText)!))
            case "-":
                String((converterToDouble(num: firstNumText)!) - (converterToDouble(num: secondNumText)!))
            default:
                "zero"
            }
        } else {
            "Invalid Input Type"
        }
        
        
    }
    

    @IBAction func calculateDotProduct(_ sender: Any) {
        resultText.text = getOperation(operation: "*")
    }
    
    
    @IBAction func calculateDivide(_ sender: Any) {
        resultText.text = getOperation(operation: "/")
    }
    
    
    @IBAction func calculateAddition(_ sender: Any) {
        resultText.text = getOperation(operation: "+")
    }
    
    
    @IBAction func calculateDifference(_ sender: Any) {
        resultText.text = getOperation(operation: "-")
    }
    
}

