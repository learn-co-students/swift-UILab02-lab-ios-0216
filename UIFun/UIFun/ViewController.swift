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
    
    var firstColor:String = ""
    var secondColor:String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        var colorString:String = ""
        
//        if first == "Red" || second == "Blue" && first == "Blue" || second == "Red" {
//            colorString = "Purple"
//        }
//        if first == "Red" || second == "Yellow" && first == "Yellow" || second == "Red" {
//            colorString = "Orange"
//        }
//        if first == "Blue" || second == "Yellow" && first == "Yellow" || second == "Blue" {
//            colorString = "Green"
//        }
        
        switch (first, second) {
        case ("Red", "Blue"), ("Blue", "Red"):
            colorString = "Purple"
        case ("Red", "Yellow"), ("Yellow", "Red"):
            colorString = "Orange"
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            colorString = "Green"
        default:
            print("mixed color func was called")
        }
        
        return colorString
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        var mixedColor = ""
        
        if firstColor == "" {
            
            firstColor = sender.color.name
            secondColor = paintBucket.paintColorName
            
            mixedColor = mixColors(withFirst: firstColor, second: secondColor)
            
            print("\n1st if statement:\n")

            print("firstColor is:\(firstColor)")
            print("secondColor is:\(secondColor)")
            print("mixedColor is:\(mixedColor)")
            
        }
        
        else if paintBucket.paintColorName != sender.color.name {
            
            secondColor = firstColor
            firstColor = sender.color.name
            mixedColor = mixColors(withFirst: firstColor, second: secondColor)
            
            print("\n2nd If Statement called\n")

            print("paintBucket.paintColorName is:\(paintBucket.paintColorName), sender.color.name is:\(sender.color.name)")

            print("first color is: \(firstColor), secondColor is:\(secondColor)")
            print("mixedcolor is:\(mixedColor)")

        }

      
        
      
        switch mixedColor {
        case "Red":
            paintBucket.backgroundColor = UIColor.redColor()
        case "Yellow":
            paintBucket.backgroundColor = UIColor.yellowColor()
        case "Blue":
            paintBucket.backgroundColor = UIColor.blueColor()
        case "Purple":
            paintBucket.backgroundColor = UIColor.purpleColor()
        case "Green":
            paintBucket.backgroundColor = UIColor.greenColor()
        case "Orange":
            paintBucket.backgroundColor = UIColor.orangeColor()
        default:
            print("No color selected")
        }
        
    }
    
}
