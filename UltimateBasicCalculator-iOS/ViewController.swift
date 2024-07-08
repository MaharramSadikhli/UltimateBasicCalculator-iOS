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
    
    
    func divideZero () -> String {
        if secondNumText.text == Optional("0"){
            resultText.font = UIFont.systemFont(ofSize: 15)
            return "A number is not divisible by 0"
        } else {
            resultText.font = UIFont.systemFont(ofSize: 30)
            return String((converterToDouble(num: firstNumText)!) / (converterToDouble(num: secondNumText)!))
        }
    }
    
    
    // Converter Strimg to Double
    func converterToDouble (num: UITextField) -> Double? {
        
        if let text = num.text, let doubleValue = Double(text) {
            return doubleValue
        }
        return nil
    }
    
    
    // Controler for Nullables
    func controlNums() -> Bool {
        
        return if ( converterToDouble(num: firstNumText) != nil && converterToDouble(num: secondNumText) != nil) { true } else { false }
        
    }
    
    
    // Get Operations
    func getOperation (operation: String) -> String {
        return if controlNums() {
            switch operation {
            case "*":
                String((converterToDouble(num: firstNumText)!) * (converterToDouble(num: secondNumText)!))
            case "/":
                divideZero()
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

