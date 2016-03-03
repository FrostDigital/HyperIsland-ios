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
        UIColor.whiteColor(),
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.cyanColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()
    ]
    
    private let colorNames: [String] = [
        "white",
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
    @IBOutlet weak var CurrentColor: UILabel!
   
    
    //MARK: Properties
    
    var colorStepper: Int = 0
    
    //MARK: IBActions
    
    @IBAction func changeColor(sender: AnyObject?) {
        let colorIndex = colorStepper % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
        CurrentColor.textColor = colors [colorIndex]
        CurrentColor.text = colorNames [colorIndex]
        
        //increase our stepper
        colorStepper++
    }
    

    @IBAction func ResetButton(sender: UIButton) {
    awesomeView?.backgroundColor = colors[0]
    CurrentColor?.text = colorNames [0]
    CurrentColor?.textColor = colors [0]}
    
    
    @IBAction func randomChangeColor(sender: AnyObject?) {
        let colorIndex = random() % colors.count

        
        awesomeView?.backgroundColor = colors[colorIndex]
    }
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var SliderGreen: UISlider!
    @IBOutlet weak var SliderBlue: UISlider!
    
    @IBAction func SliderRed(sender: UISlider) {
        awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(SliderGreen.value), blue: CGFloat(SliderBlue.value), alpha: 1.0)
    }
    @IBAction func SliderGreen(sender: AnyObject) {
         awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(SliderGreen.value), blue: CGFloat(SliderBlue.value), alpha: 1.0)
    }
    
    @IBAction func SliderBlue(sender: AnyObject) {
         awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(SliderGreen.value), blue: CGFloat(SliderBlue.value), alpha: 1.0)
    }
    
}