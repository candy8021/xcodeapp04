//
//  ViewController.swift
//  xcodeapp04
//
//  Created by stoller on 2018/4/17.
//  Copyright © 2018年 hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
 
  
    @IBAction func ButtonPress(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        
        view.backgroundColor = lightOn ? .white : .black
        
    }
    
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

