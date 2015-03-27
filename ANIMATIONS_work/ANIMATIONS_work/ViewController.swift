//
//  ViewController.swift
//  ANIMATIONS_work
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    
    
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }


    @IBAction func animation(sender: AnyObject) {
        // the slider value returns a float (e.g. 10.4)
        // to work in the loop we need to round down as an Int (e.g. 10)
        let numberOfFish = Int(self.numberOfFishSlider.value)
        println("numberOfFish \(numberOfFish)")
        
        for loopNumber in 1...numberOfFish {
            
            // set up some constants for the animation
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // randomly assign a delay of 0.9 to 1s
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish
            let fish = UIImageView()
            fish.image = UIImage(named: "fish")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
            })
        }
 
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
