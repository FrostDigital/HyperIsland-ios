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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentColor.text = "#000000"
    }
    
    //MARK: IBOutlets
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var awesomeView: UIView!
    @IBOutlet weak var currentColor: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    //MARK: Properties
    
    var colorStepper: Int = 0
    var red: CGFloat = 255
    var green: CGFloat = 255
    var blue: CGFloat = 255
    
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
    
    @IBAction func redSlider(sender: UISlider) {
        red = CGFloat(sender.value)
        colorOutput()
    }
    
    @IBAction func greenSlider(sender: UISlider) {
        green = CGFloat(sender.value)
        colorOutput()
    }
    
    @IBAction func blueSlider(sender: UISlider) {
        blue = CGFloat(sender.value)
        colorOutput()
    }
    
    @IBAction func reset(sender: UIButton) {
        colorStepper = 0
        awesomeView?.backgroundColor = UIColor.whiteColor()
        
    }
    
    //This is the handler for the colors
    func colorOutput(){
        
        //Hexcodes
        currentColor.text = String(format:"#%02X%02X%02X", Int(red),Int(green),Int(blue))
        
        redLabel.text = String(format: "Red: %.0f",red)
        greenLabel.text = String(format: "Green: %.0f", green)
        blueLabel.text = String(format: "Blue: %.0f",blue)
        
        //Change after printing it to match UIColor
        let redLocal = red/255
        let blueLocal = blue/255
        let greenLocal = green/255
        
        let color = UIColor(red: redLocal, green: greenLocal, blue: blueLocal, alpha: 1)
        awesomeView?.backgroundColor = color
 
        
    }
    

}

