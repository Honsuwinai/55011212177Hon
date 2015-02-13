//
//  ViewController.swift
//  TipCalculatorDelegate
//
//  Created by iStudents on 2/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate  {
    
    
    @IBOutlet weak var totaltextField: UITextField!
    
    @IBOutlet weak var taxPctslider: UISlider!
    
    @IBOutlet weak var taxPctlabel: UILabel!
    
    @IBOutlet weak var tableview: UITableView!
    
    

    let tipCale = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    var possibletips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    
  
    

    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
       return sortedKeys.count
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        let tipPct = sortedKeys[indexPath.row]
        let tipAmp = possibletips[tipPct]!.tipAmt
        let total = possibletips[tipPct]!.total
        
    
        cell.textLabel!.text = "\(tipPct)"
        cell.detailTextLabel!.text = String(format: "Tip: $%0.2f, Total: $%0.2f",tipAmp,total)
        return cell

    }
    


    
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        
        tipCale.total = Double((totaltextField.text as NSString).doubleValue)
        possibletips = tipCale.returnPossibleTips()
        sortedKeys = sorted(Array(possibletips.keys))
        tableview.reloadData()
            
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCale.taxPct = Double(taxPctslider.value) / 100.0
        refreshUI()
    }
    
        
        func refreshUI(){
            totaltextField.text = String(format: "%0.2f", tipCale.total)
        }
        
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }


}



