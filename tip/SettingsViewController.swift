//
//  SettingsViewController.swift
//  tip
//
//  Created by JP on 12/12/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController:UIViewController {
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view
        
        let userDefaults = NSUserDefaults.standardUserDefaults();
        
        lowestTip = userDefaults.floatForKey("lowest_tip")
        midTip = userDefaults.floatForkey("mid_tip")
        highestTip= userDefaults.floatForKey("highest_tip")
        
        segControl.setTitle("\(lowestTip)", forSegmentAtIndex: 0)
        segControl.setTitle("\(midTip)", forSegmentAtIndex: 1)
        segControl.setTitle("\(highestTip)", forSegmentAtIndex: 2)
        
      
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }
    
    
    @IBAction func segControlTapped(sender: AnyObject) {
        print(segControl.selectedSegmentIndex)
    }
    
}
