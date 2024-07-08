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
    

    @IBAction func calculateDotProduct(_ sender: Any) {
        
        var firstNum: Double? = Double(Int(firstNumText.text ?? "0") ?? 0)
        var secondNum: Double? = Double(Int(secondNumText.text ?? "0") ?? 0)
        print((firstNum ?? 0) / (secondNum ?? 0))
        
        resultText.text = String((firstNum ?? 0) / (secondNum ?? 0))
        
        
        
    }
    
    
    @IBAction func calculateDivide(_ sender: Any) {
    }
    
    
    @IBAction func calculateAddition(_ sender: Any) {
    }
    
    
    @IBAction func calculateDifference(_ sender: Any) {
    }
    
}

