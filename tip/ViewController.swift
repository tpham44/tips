//
//  ViewController.swift
//  tip
//
//  Created by JP on 12/7/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Static Variables
    
    let tipval1=10.0
    let tipval2=15.0
    let tipval3=20.0
    
    
    
    
    
    @IBOutlet weak var tipControl: UISegmentedControl! // Tip Percentage % Segments
    
    @IBOutlet weak var billField: UITextField!  // Entering Bill Amount
    
    @IBOutlet weak var tipLabel: UILabel!   // Tip Amount only $20
    
    @IBOutlet weak var totalLabel: UILabel! // Total Amount$120
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
      //  self.setTipValues()
        
        
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        
           self.setTipValues()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setTipValues()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        // TEST COMMENT
        
        // User select settings with following oftion
        // if Overwrite defaul percentage value  Opt.1
        // Select Save to overwrite current value
        
        
        // If select default will cal setTipValues FUNC
        // Otherwise do nothing.
        
    }

    func setTipValues(){
    
let userDefaults=NSUserDefaults.standardUserDefaults()
        
        
        if userDefaults.floatForKey("tipval1")>0 {
            
            //set the segment
            
            let lowestTip = userDefaults.floatForKey("tipval1")
            let midTip = userDefaults.floatForKey("tipval2")
            let highestTip = userDefaults.floatForKey("tipval3")
            
            tipControl.setTitle("\(lowestTip)", forSegmentAtIndex: 0)
            tipControl.setTitle("\(midTip)", forSegmentAtIndex: 1)
            tipControl.setTitle("\(highestTip)", forSegmentAtIndex: 2)
        }
        else{
        
        //do nothing and leave values alone
        
        }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let userDefaults=NSUserDefaults.standardUserDefaults()
        
        if userDefaults.floatForKey("tipval1") > 0 && userDefaults.floatForKey("tipval2") > 0 && userDefaults.floatForKey("tipval3") > 0{
        
            let tipPercentages = [userDefaults.floatForKey("tipval1"), userDefaults.floatForKey("tipval2"),userDefaults.floatForKey("tipval3")]
            
            
            
            //let tipPercentages = [lowestTip, midTip, highestTip]
            
            let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            
            let billAmount = NSString(string: billField.text!).floatValue
            let tip = billAmount * tipPercentage / 100
            let total = billAmount + tip
            
            tipLabel.text = String(format:"$%.2f", tip)
            totalLabel.text = String(format:"$%.2f", total)
            
            
            
        
        }
        
        else{
        
            let tipPercentages = [tipval1, tipval2,tipval3]
            //let tipPercentages = [lowestTip, midTip, highestTip]
            
            let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            
            let billAmount = NSString(string: billField.text!).doubleValue
            let tip = billAmount * tipPercentage
            let total = billAmount + tip
            
            tipLabel.text = String(format:"$%.2f", tip)
            totalLabel.text = String(format:"$%.2f", total)
        
        
        
        }
        
       
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }
}

