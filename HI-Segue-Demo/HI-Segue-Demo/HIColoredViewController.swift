//
//  HIColoredViewController.swift
//  HI-Segue-Demo
//
//  Created by Sergii Nezdolii on 06/03/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

extension UIColor {
    func inverse () -> UIColor {
        var r:CGFloat = 0.0; var g:CGFloat = 0.0; var b:CGFloat = 0.0; var a:CGFloat = 0.0;
        if self.getRed(&r, green: &g, blue: &b, alpha: &a) {
            return UIColor(red: 1.0-r, green: 1.0 - g, blue: 1.0 - b, alpha: a)
        }
        return self
    }
}

class HIColoredViewController: UIViewController {
    
    var shouldInverseColor: Bool?
    var baseColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Need to make sure that baseColor is set, otherwise skip color setup
        guard let bgColor = baseColor else {
            return
        }
        
        if shouldInverseColor == true {
            self.view.backgroundColor = bgColor.inverse()
        } else {
            self.view.backgroundColor = bgColor
        }
    }
    
}
