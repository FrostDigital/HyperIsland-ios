//
//  ViewController.swift
//  HI-IBOutlet-Demo
//
//  Created by Sergii Nezdolii on 28/02/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    
    private let colors: [UIColor] = [
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.cyanColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()
    ]
    
    private let colorNames: [String] = [
        "Red",
        "Orange",
        "Yellow",
        "Green",
        "Cyan",
        "Blue",
        "Purple"
    ]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var awesomeView: UIView!
    
    //MARK: Properties
    
    var colorStepper: Int = 0
    
    //MARK: IBActions
    
    @IBAction func changeColor(sender: AnyObject?) {
        let colorIndex = colorStepper % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
        
        //increase our stepper
        colorStepper++
    }
    
    @IBAction func randomChangeColor(sender: AnyObject?) {
        let colorIndex = random() % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
    }

}

