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
        if userTiping {
            let currentNumberInDisplay = currentNumber.text!
            if digit == "." && currentNumberInDisplay.range(of: ".") != nil {
                return
            } else {
                let tempDigit = currentNumberInDisplay + digit
                currentNumber.text = tempDigit
//                currentNumber.text = tempDigit.setMaxLength(of: 8)

            }
        } else {
            if digit == "." {
                currentNumber.text = "0."
            } else {
                currentNumber.text = digit
            }
            userTiping = true
        }
        currentNumber.text = currentNumber.text! + digit

    }
    
    @IBAction func getAction(_ sender: UIButton) {
        let calAction = sender.currentTitle!
        
        switch calAction {
            case "AC" : calOperation { $0 * $1 }
            case "%" : calOperation { $0 * $1 }
            case "/" : calOperation { $1 / $0 }
            case "*" : calOperation { $0 * $1 }
            case "+" : calOperation { $0 + $1 }
            case "-" : calOperation { $0 * $1 }
            case "=" : calOperation { $0 * $1 }
        default : break
        }
    }
    func calOperation(_ resultValue: (Double, Double) -> Double){
        strLabel.text = "\(resultValue)"
    }
    

    func displayCurrentGetNumber() {
        print(clickedNumber)
        currentNumber.text = String(clickedNumber)
    }
}

