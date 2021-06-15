//
//  ViewController.swift
//  pageControlMission
//
//  Created by Isaac Shin on 2021/06/14.
//

import UIKit

let NUM_PAGE = 10

class ViewController: UIViewController {
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var pagevIew: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = NUM_PAGE
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        pagevIew.text = String(pageControl.currentPage+1)
        
        
    }


    @IBAction func pageChange(_ sender: UIPageControl) {
        pagevIew.text = String(pageControl.currentPage+1)
    }
}

