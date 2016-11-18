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
    
    let numberOfPages=4
    
    var scrollView=LGCircleScrollView1()
    
    var pagecontrol=UIPageControl()
    
    var mainTimer=NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let images=["1","2","3"]
        scrollView=LGCircleScrollView1.init(frame: CGRect(x: 0, y: 100, width: SCREEN_Width, height: 200))
        
       scrollView.addPageImages(images)
        
        
        
        
        
        
       
        
        
        
        
        
          self.view.addSubview(scrollView )
        
        
      
        
//        scrollView.delegate=self
//        
//        createScrollView()
//        
//        createPageControl()
//        
//        addPageImages()
//        
//        addTimer()
        
    }
    
    
//    func createScrollView()
//    {
//    
//      scrollView.frame=CGRect(x: 0, y: 100, width: SCREEN_Width, height: 200)
//        
//        
//        scrollView.pagingEnabled=true
//        
//        
//        scrollView.contentSize=CGSize(width: SCREEN_Width*3, height: 200)
//    
//    
//       scrollView.backgroundColor=UIColor.orangeColor()
//    
//    
//       self.view.addSubview(scrollView)
//    
//    
//    }
//    
//    
//    func createPageControl()
//    {
//    
//      
//        
//        pagecontrol.frame=CGRect(x: 150, y:270, width: 60, height: 20)
//        
//        
//        pagecontrol.backgroundColor=UIColor.blueColor()
//    
//    
//        pagecontrol.numberOfPages=3
//        
//        pagecontrol.currentPage=0
//        
//        
//       self.view.addSubview(pagecontrol)
//    
//    
//    
//    }
//    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        self.addTimer()
//    }
//    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.removeTimer()
//    }
//    
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
//    {
//       
//        
//        let width = CGRectGetWidth(scrollView.frame)
//        
//        print("width:\(width)")
//        let offsetX = scrollView.contentOffset.x
//        let index = offsetX / width
//        print("当前页是：\(index)")
//        
//        self.pagecontrol.currentPage = Int(index)
//    }
//    
//    
//    func addPageImages()
//    {
//    
//    
//        let imageview1=UIImageView()
//        
//        imageview1.frame=CGRect(x: 0, y: 0, width: SCREEN_Width, height: scrollView.bounds.height)
//        
//        
//        imageview1.image=UIImage(named: "1")
//        
//        
//        scrollView.addSubview(imageview1)
//        
//        
//        
//        let imageview2=UIImageView()
//        
//        imageview2.frame=CGRect(x: SCREEN_Width, y: 0, width: SCREEN_Width, height: scrollView.bounds.height)
//        
//        
//        imageview2.image=UIImage(named: "2")
//        
//        
//        scrollView.addSubview(imageview2)
//
//        
//        
//        
//        
//        let imageview3=UIImageView()
//        
//        imageview3.frame=CGRect(x: SCREEN_Width*2, y: 0, width: SCREEN_Width, height: scrollView.bounds.height)
//        
//        
//        imageview3.image=UIImage(named: "3")
//        
//        
//        scrollView.addSubview(imageview3)
//
//    
//    
//    }
//    func addTimer()
//    {
//        
//        
//        self.mainTimer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("autoShow"), userInfo: nil, repeats: true)
//    }
//    
//    func removeTimer(){
//        self.mainTimer.invalidate()
//    }
//    
//    func autoShow()
//    {
//        var page = self.pagecontrol.currentPage
//        if page==2
//        {
//            page = 0
//        }
//        else
//        {
//            page += 1
//        }
//        
//        // 设置偏移量
//        let offsetX = CGFloat(page) * CGRectGetWidth(self.scrollView.frame)
//        self.scrollView.setContentOffset(CGPointMake(offsetX, 0.0), animated: true)
//        self.pagecontrol.currentPage = page
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

