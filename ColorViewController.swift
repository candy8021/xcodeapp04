//
//  ColorViewController.swift
//  xcodeapp04
//
//  Created by stoller on 2018/4/17.
//  Copyright © 2018年 hung. All rights reserved.
//

import UIKit
import GameplayKit

class ColorViewController: UIViewController {
    
    let rainbowColor:[UIColor] = [.init(red: 1, green: 0, blue: 0, alpha: 1),
                                  .init(red: 1, green: 127/255, blue: 0, alpha: 1),
                                  .init(red: 1, green: 1, blue: 0, alpha: 1),
                                  .init(red: 0, green: 1, blue: 0, alpha: 1),
                                  .init(red: 0, green: 0, blue: 1, alpha: 1),
                                  .init(red: 75/255, green: 0, blue: 130/255, alpha: 1),
                                  .init(red: 148/255, green: 0, blue: 211/255, alpha: 1)]
    
    let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 6)
    
    var rainbowCount:Int = 0
    var rainbowNumber = 0
    
    @IBAction func ButtonPress(_ sender: UIButton) {
        updateUI()
    }
    
    func initUI() {
        rainbowNumber = randomDistribution.nextInt()// 從亂數取出第一個顏色
        
        view.backgroundColor = rainbowColor[rainbowNumber] // 變更顯示顏色
        
    }
    
    func updateUI() {
        rainbowCount = rainbowCount < 6 ? rainbowCount + 1 : 0  // 利用?判斷真假,true為＋1,false為0以設定顯示的顏色
        view.backgroundColor = rainbowColor[rainbowCount]   // 變更螢幕顯示顏色
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
