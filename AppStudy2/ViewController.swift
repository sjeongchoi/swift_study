//
//  ViewController.swift
//  AppStudy2
//
//  Created by jin on 2018. 6. 28..
//  Copyright © 2018년 jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var strLabel: UILabel!
    @IBOutlet weak var currentNumber: UILabel!

    var clickedNumber: Int!
    var userTiping: Bool = false
    var hasOperation: Bool = false
    var isCleared: Bool = true
    
    var lastNumber: Double = 0
    
    enum Operations: String{
        case Add = "+"
        case Subtract = "-"
        case Multiply = "*"
        case Divide = "/"
    }
    
    var clickedOperation: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClick(_ sender: Any) {
        strLabel.text = "Change the Value"
    }
    
    @IBAction func appendDigit(_ sender: UIButton){
        let digit = sender.currentTitle!
        var currentNumberInDisplay : String = ""
        if currentNumber.text != "0" {
            currentNumberInDisplay = currentNumber.text!
        }

        if hasOperation {
            if clickedOperation == "/" && digit == "0" {
                currentNumber.text = "ERROR"
            } else {
                if digit == "." {
                    currentNumber.text = "0."
                } else {
                    currentNumber.text = digit
                }
            }
            hasOperation = false
        } else {
            if digit == "." && currentNumberInDisplay.range(of: ".") != nil {
                return
            } else {
                let tempDigit = currentNumberInDisplay + digit
                currentNumber.text = tempDigit
            }
            
        }

    }
    
    @IBAction func getAction(_ sender: UIButton) {
        clickedOperation = sender.currentTitle!
        
        hasOperation = true
        if isCleared {
            lastNumber = Double(currentNumber.text!)!
            isCleared = false
        }
//        let calAction = sender.currentTitle!
//        switch calAction {
//            case "%" : calOperation { $0 * $1 }
//            case "/" : calOperation { $1 / $0 }
//            case "*" : calOperation { $0 * $1 }
//            case "+" : calOperation { $0 + $1 }
//            case "-" : calOperation { $0 * $1 }
//        default : break
//        }
    }
//    func calOperation(_ resultValue: (Double, Double) -> Double){
//        print("??????")
//        strLabel.text = "\(resultValue)"
//    }
    @IBAction func clearDisplay(_ sender:UIButton) {
        currentNumber.text = String(0)
        lastNumber = 0
        isCleared = true
    }
    @IBAction func completeCalculate(_ sender: UIButton) {
        let currentValue = Double(currentNumber.text!)!
        var result: Double = 0
        
        switch clickedOperation {
            case "/" : result = lastNumber / currentValue
            case "*" : result = lastNumber * currentValue
            case "+" : result = lastNumber + currentValue
            case "-" : result = lastNumber - currentValue
        default : break
        }
        result = Double(round(10000000*result)/10000000)
        currentNumber.text = String(result)
        lastNumber = result
    }

//    func displayCurrentGetNumber() {
//        print(clickedNumber)
//        currentNumber.text = String(clickedNumber)
//    }
}

