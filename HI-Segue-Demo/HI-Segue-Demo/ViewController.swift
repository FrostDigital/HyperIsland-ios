//
//  ViewController.swift
//  HI-Segue-Demo
//
//  Created by Sergii Nezdolii on 06/03/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: UITextField delegate
    
    //Implementing this method allows to dismiss keyboard if Return (Enter) is used
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

