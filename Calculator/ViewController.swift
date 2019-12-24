//
//  ViewController.swift
//  Calculator
//
//  Created by Alexander Römer on 21.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorLabel: UILabel!
    
    private var isTypingNumber = false
    private var firstNumber    = 0
    private var secondNumber   = 0
    private var operation      = "  "
    
    @IBAction private func numberTapped(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if isTypingNumber {
            calculatorLabel.text = calculatorLabel.text! + number
        } else {
            calculatorLabel.text = number
            isTypingNumber = true
        }
    }
    
    @IBAction private func calculationTapped(_ sender: UIButton) {
        isTypingNumber = false
        firstNumber    = Int(calculatorLabel.text!)!
        operation      = sender.currentTitle!
    }
    
    
    @IBAction private func restart(_ sender: UIButton) {
        calculatorLabel.text = "0"
        firstNumber = 0
        secondNumber = 0
    }
    
    @IBAction private func equalsTapped(_ sender: UIButton) {
        isTypingNumber = false
        var result     = 0
        secondNumber   = Int(calculatorLabel.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else if operation == "÷" {
            result = firstNumber / secondNumber
        }
        calculatorLabel.text = String(result)
    }
    
}

