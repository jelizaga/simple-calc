//
//  ViewController.swift
//  another-calc
//
//  Created by Joel Elizaga on 4/21/16.
//  Copyright © 2016 Joel Elizaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storage = [Int]()
    var history = [String]()
    var op = ""
    var opDeclared = false
    var currentNumber = 0
    var previousNumber = 0
    var isTypingNumber = false

    @IBOutlet weak var calcDisplay: UILabel!
    @IBOutlet weak var resultDisplay: UILabel!
    
    // Most ghetto solution I've ever written. Initiating arrays with 15 empty strings to prevent
    // crashes.
    override func viewDidLoad() {
        
        super.viewDidLoad()
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")
        history.append("")

        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController: History = segue.destinationViewController as! History
        DestViewController.calculation1 = "haha"
        if !history.isEmpty {
            let topHistory = history.count
            DestViewController.calculation1 = history[topHistory - 1]
            DestViewController.calculation2 = history[topHistory - 2]
            DestViewController.calculation3 = history[topHistory - 3]
            DestViewController.calculation4 = history[topHistory - 4]
            DestViewController.calculation5 = history[topHistory - 5]
            DestViewController.calculation6 = history[topHistory - 6]
            DestViewController.calculation7 = history[topHistory - 7]
            DestViewController.calculation8 = history[topHistory - 8]
            DestViewController.calculation9 = history[topHistory - 9]
            DestViewController.calculation10 = history[topHistory - 10]
            DestViewController.calculation11 = history[topHistory - 11]
            DestViewController.calculation12 = history[topHistory - 12]
            DestViewController.calculation13 = history[topHistory - 13]
            DestViewController.calculation14 = history[topHistory - 14]
            DestViewController.calculation15 = history[topHistory - 15]
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////
    // NUMBER BUTTON //////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    
    // Appends received number to the number currently being typed.
    @IBAction func bttnNumber(sender: UIButton) {
        
        if calcDisplay.text == "0" {
            calcDisplay.text = ""
        }
        
        let number = sender.currentTitle
        
        if isTypingNumber {
            calcDisplay.text = calcDisplay.text! + (number)!
        } else {
            calcDisplay.text = number
            isTypingNumber = true
        }
        
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////
    // OPERATOR BUTTON ////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    // Declares that the user has finished typing a number, and stores the previous number.
    @IBAction func bttnOperator(sender: UIButton) {
        
        isTypingNumber = false
        previousNumber = Int(calcDisplay.text!)!
        if sender.currentTitle == "NXT" {
            storage.append(previousNumber)
        }
        op = sender.currentTitle!
        
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    // ARRAY BUTTON ///////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    
    // Uses storage to produce results upon pressing of array buttons.
    @IBAction func bttnArray(sender: UIButton) {
        
        var result = 0
        var resultDub = 0.0
        currentNumber = Int(calcDisplay.text!)!
        if (sender.currentTitle == "=") {
            if (op == "+") {
                result = previousNumber + currentNumber
                history.append("\(previousNumber) + \(currentNumber) = \(result)")
            } else if (op == "-") {
                result = previousNumber - currentNumber
                history.append("\(previousNumber) - \(currentNumber) = \(result)")
            } else if (op == "*") {
                result = previousNumber * currentNumber
                history.append("\(previousNumber) * \(currentNumber) = \(result)")
            } else if (op == "/") {
                result = previousNumber / currentNumber
                history.append("\(previousNumber) / \(currentNumber) = \(result)")
            } else {
                result = previousNumber % currentNumber
                history.append("\(previousNumber) % \(currentNumber) = \(result)")
            }
        } else if (sender.currentTitle == "AVG") {
            var total = 0.0
            for num in storage {
                total += Double(num)
            }
            resultDub = total / Double(storage.count)
            history.append("AVG: \(total) / \(storage.count) = \(resultDub)")
        } else if (sender.currentTitle == "CNT") {
            result = storage.count
            history.append("CNT: \(result)")
        } else if (sender.currentTitle == "FAC") {
            for var i = 0; i <= currentNumber; i += 1 {
                result += i
            }
            history.append("FAC: \(result)")
        }
        
        if (sender.currentTitle == "AVG") {
            resultDisplay.text = "RES: \(resultDub)"
        } else if (sender.currentTitle == "CLR") {
        
        } else {
            resultDisplay.text = "RES: \(result)"
        }
        calcDisplay.text = "0"
        storage.removeAll()
        
    }
    
}

