//
//  ViewController.swift
//  LGCircleScrollView
//
//  Created by phiic on 16/11/18.
//  Copyright © 2016年 luogang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    
    
    let SCREEN_Width=UIScreen.mainScreen().bounds.size.width
    
    let SCREEN_Height=UIScreen.mainScreen().bounds.size.height
    
    var scrollView=LGCircleScrollView1()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let images=["1","2","3"]
        scrollView=LGCircleScrollView1.init(frame: CGRect(x: 0, y: 100, width: SCREEN_Width, height: 200))
        
       scrollView.addPageImages(images)
        
        
          self.view.addSubview(scrollView )
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

