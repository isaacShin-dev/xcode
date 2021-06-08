//
//  ViewController.swift
//  ImageViewMission
//
//  Created by Isaac Shin on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var imgView: UIImageView!
    
    var numImg = 1
    var maxImg = 5
    var imgName: UIImage?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgPath = String(numImg) + ".jpg"
        imgView.image = UIImage(named: imgPath)
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        
        numImg -= 1
        if(numImg<1){
            numImg = maxImg
        }
        var imgPath = String(numImg) + ".jpg"
        imgView.image = UIImage(named: imgPath)
       
        
    }
    @IBAction func btnNext(_ sender: UIButton) {
        numImg += 1
        
        if(numImg>maxImg){
            numImg = 1
        }
        var imgPath = String(numImg) + ".jpg"
        imgView.image = UIImage(named: imgPath)
    }
    
}

