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
    
    @IBAction func numZero(_ sender: Any) {
        clickedNumber = 0
        displayCurrentGetNumber()
    }
    @IBAction func numOne(_ sender: Any) {
        clickedNumber = 1
        displayCurrentGetNumber()
    }
    @IBAction func numTwo(_ sender: Any) {
        clickedNumber = 2
        displayCurrentGetNumber()
    }
    @IBAction func numThree(_ sender: Any) {
        clickedNumber = 3
        displayCurrentGetNumber()
    }
    @IBAction func numFour(_ sender: Any) {
        clickedNumber = 4
        displayCurrentGetNumber()
    }
    @IBAction func numFive(_ sender: Any) {
        clickedNumber = 5
        displayCurrentGetNumber()
    }
    @IBAction func numSix(_ sender: Any) {
        clickedNumber = 6
        displayCurrentGetNumber()
    }
    @IBAction func numSeven(_ sender: Any) {
        clickedNumber = 7
        displayCurrentGetNumber()
    }
    @IBAction func numEight(_ sender: Any) {
        clickedNumber = 8
        displayCurrentGetNumber()
    }
    @IBAction func numNine(_ sender: Any) {
        clickedNumber = 9
        displayCurrentGetNumber()
    }
    @IBAction func numDot(_ sender: Any) {
        
    }
    
    @IBAction func doCompleteAction(_ sender: Any) {
    }
    @IBAction func doPlusActoin(_ sender: Any) {
    }
    @IBAction func doMinusAction(_ sender: Any) {
    }
    @IBAction func doMultipleAction(_ sender: Any) {
    }
    @IBAction func doDivideAction(_ sender: Any) {
    }
    @IBAction func doPercentAction(_ sender: Any) {
    }
    @IBAction func clearCurrentState(_ sender: Any) {
    }
    @IBAction func changePlusMinus(_ sender: Any) {
    }
    
    func displayCurrentGetNumber() {
        print(clickedNumber)
        currentNumber.text = String(clickedNumber)
    }
}

