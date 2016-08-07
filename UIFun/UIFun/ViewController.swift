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
    @IBOutlet weak var bucket: UIImageView!
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var bottomSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        bucket.backgroundColor = topSegment.color
        
    }
    
    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        var color = ""
        
        if first == second{
            
            return first.lowercaseString
        }
        
        switch first {
            
        case "Yellow":
            
            if second == "Blue"{
                
                color = "green"
                
            }else if second == "Red"{
                
                color = "orange"
            }
            
        case "Blue":
            
            if second == "Red"{
                
                color = "purple"
                
            }else if second == "Yellow"{
                
                color = "green"
            }
            
        case "Red":
            
            if second == "Blue"{
                
                color = "purple"
                
            }else if second == "Yellow"{
                
                color = "orange"
            }
            
        default:
            
            color = "white"
        }
        return color
    }
    
    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let firstColor = topSegment.color.name
        let secondColor = bottomSegment.color.name
        
        let newcolor = mixColors(withFirst: firstColor, second: secondColor)
        
        bucket.paintColorName = newcolor
    }
}
