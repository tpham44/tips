//
//  SettingsViewController.swift
//  tip
//
//  Created by JP on 12/12/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController:UIViewController {
    
  
    @IBOutlet weak var txt_tipVal1: UITextField!
    
    @IBOutlet weak var txt_tipVal2: UITextField!
    
    @IBOutlet weak var txt_tipVal3: UITextField!
    
    
    //MARK: - Static Variables
    
    let tipval1=10.0
    let tipval2=15.0
    let tipval3=20.0
    

    
    //MARK: - Labels
    
        @IBOutlet weak var lbl_3: UILabel!
    
    
    
      //MARK: - Variables
 
    var lowestTip: Float!
    var midTip: Float!
    var highestTip: Float!

    
    
    @IBAction func saveTipValues(sender: AnyObject) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        userDefaults.setFloat(Float(txt_tipVal1.text!)!, forKey: "tipval1")
        //print("18")
        
        
        userDefaults.setFloat(Float(txt_tipVal2.text!)!, forKey: "tipval2")
        //print("19")
        
        userDefaults.setFloat(Float(txt_tipVal3.text!)!, forKey: "tipval3")
        //print("20")
        
              lbl_3.text="Saved !!"
        

        
        
    }
    
    @IBAction func resetTipDefaults(sender: AnyObject) {
        
        
    
            
            let userDefaults = NSUserDefaults.standardUserDefaults()
            
            userDefaults.setFloat(Float(tipval1), forKey: "tipval1")
            //print("18")
            
            
            userDefaults.setFloat(Float(tipval2), forKey: "tipval2")
            //print("19")
            
            userDefaults.setFloat(Float(tipval3), forKey: "tipval3")
            //print("20")
            
            lbl_3.text="Reset To Defaults"
            
            
            
            
        
        
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let userDefaults = NSUserDefaults.standardUserDefaults()
        lowestTip = userDefaults.floatForKey("txt_tipVal1")
        print("low");
        midTip = userDefaults.floatForKey("txt_tipVal2")
        print("midium");
        highestTip = userDefaults.floatForKey("txt_tipVal3")
        print("most");

              }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }
    
    
//    @IBAction func segControlTapped(sender: AnyObject) {
//        print(segControl.selectedSegmentIndex)
//    }
    
}
