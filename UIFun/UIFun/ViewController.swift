//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIImageView!

    @IBOutlet weak var controller1: UISegmentedControl!
    
    @IBOutlet weak var controller2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        
        paintBucket.backgroundColor = controller1.color
        
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        var colorString:String = ""
        
        if first == second {
            
            return first.lowercaseString
        
        }
        
        switch first {
            
        case "Red":
            
            if second == "Blue" {
                
                colorString = "purple"
                
            } else if second == "Yellow" {
            
                colorString = "orange"
        }
        case "Yellow":
            
            if second == "Blue" {
                
                colorString = "green"
            
            } else if second == "Red" {
                
                colorString = "orange"
                
            }
            
        case "Blue":
            
            if second == "Red" {
                
                colorString = "purple"
                
            } else if second == "Yellow" {
                
                colorString = "green"
            
            }
        default:
            
            colorString = "white"
        
        }
        
        return colorString
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let firstColor = controller1.color.name
        let secondColor = controller2.color.name
      
        let mixedColor = mixColors(withFirst: firstColor, second: secondColor)
      
       paintBucket.paintColorName = mixedColor
        
        
    }
    
}
