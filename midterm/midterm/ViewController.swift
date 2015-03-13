//
//  ViewController.swift
//  midterm
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    
    @IBOutlet weak var subject: UITextField!
    
    
    
    @IBOutlet weak var inclass: UITextField!
    @IBOutlet weak var scoreinclass: UITextField!
    
    
    
    @IBOutlet weak var mid: UITextField!
    @IBOutlet weak var scoremid: UITextField!
    
    
    
    @IBOutlet weak var final: UITextField!
    @IBOutlet weak var scorefinal: UITextField!
    
    
    
    
    @IBOutlet weak var tableview: UITextView!
    
    
    
    @IBAction func Calculate(sender: UIButton) {
        
        var str:String = subject.text
    
        var siclass = Double((scoreinclass.text as NSString).doubleValue)
        
        var mid = Double((scoremid.text as NSString).doubleValue)
        
        var final = Double((scorefinal.text as NSString).doubleValue)
        
        var sum = Double(siclass + mid + final)
        
        var t = CalGrade(sum)
        
        tableview.text = "Subject | \(str) \nGrade : \(t)"+"  ( "+"\(sum) "+") "
    
    }
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

    

    func CalGrade(sum:Double) -> String{
        var result:String = ""
        if(sum>=80){
            result = "A"
        }
        else if(sum>=74){
            result = "B+"
        }
        else if(sum>=68){
            result = "B+"
        }
        else if(sum>=62){
            result = "C+"
        }
        else if(sum>=56){
            result = "C"
        }
        else if(sum>=50){
            result = "D+"
        }
        else if(sum>=44){
            result = "D+"
        }
        else{
            result = "F"
        }
        
        return result
        
    }
}

