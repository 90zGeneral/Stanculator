//
//  ViewController.swift
//  Stanculator
//
//  Created by Roydon Jeffrey on 3/22/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsCurrentlyTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Number buttons
    @IBAction func digitTouched(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsCurrentlyTyping {
            let currentDisplayText = display.text!
            display.text = currentDisplayText + digit
        }else {
            display.text = digit
            userIsCurrentlyTyping = true
        }
    }
    
    //Getter and Setter
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }

    //Math operation buttons
    @IBAction func mathOperation(_ sender: UIButton) {
        userIsCurrentlyTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
        
    }
}

