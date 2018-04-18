//
//  PictureViewController.swift
//  xcodeapp04
//
//  Created by stoller on 2018/4/18.
//  Copyright © 2018年 hung. All rights reserved.
//

import UIKit
import GameplayKit

let photosAry = ["001","002","003","004","005","006","007"]
class PictureViewController: UIViewController {
    @IBOutlet weak var UIphotoImage: UIImageView!
    
    
    @IBAction func ButtonPress(_ sender: UIButton) {
        updateUI()
        
    }
    let randomPhoto = GKRandomDistribution(lowestValue: 0, highestValue: 6)
    
    var photoCount:Int = 0
    var photoNumber = 0
    
    func initUI() {
        
        photoNumber = randomPhoto.nextInt()// 從亂數取出第一個圖片
        UIphotoImage.image = UIImage(named: photosAry[photoNumber]) // 變更圖片
        
    }
    
    func updateUI() {
        photoCount = photoCount < 6 ? photosAry.count + 1 : 0
        let photoAry = photosAry[randomPhoto.nextInt()]
        UIphotoImage.image = UIImage(named: photoAry)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
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
