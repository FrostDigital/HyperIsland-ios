//
//  HIColoredViewController.swift
//  HI-Segue-Demo
//
//  Created by Sergii Nezdolii on 06/03/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class HISimpleViewController: UIViewController {

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "InverseColorSegue" {
            //Check if destination controller is of class we need
            guard segue.destinationViewController is HIColoredViewController else {
                return
            }
            
            //We need to class cast our destinationVC to be able to change its values
            let destinationVC = segue.destinationViewController as! HIColoredViewController
            destinationVC.baseColor = self.view.backgroundColor
            destinationVC.shouldInverseColor = true
        }
    }
}
