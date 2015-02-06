//
//  ViewController.swift
//  QuizNumber
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var num1: UILabel!
    
    
    @IBOutlet weak var num2: UILabel!
    
    
    @IBOutlet weak var num3: UILabel!
    
    
    
    
    
    
    var sum1 = 0
    var sum2 = 0
    var sum3 = 0
    
    

    
    
    
    @IBAction func One(sender: AnyObject) {
     sum1 = sum1 + 1
        num1.text = String(sum1)
    }
    
    
    @IBAction func Two(sender: AnyObject) {
        sum2 = sum2 + 1
        num2.text = String(sum2)
    }
    
    
    @IBAction func Three(sender: AnyObject) {
        sum3 = sum3 + 1
        num3.text = String(sum3)
    }

    
    
 
    
    
    @IBAction func Reset(sender: AnyObject) {
        reset()
    }
    //เคลียร์เลขให้ป็น 0
    
    
    func reset () {
        num1.text = "0"
        num2.text = "0"
        num3.text = "0"
        
        sum1 = 0
        sum2 = 0
        sum3 = 0
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

