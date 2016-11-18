import UIKit//
//  LGCircleScrollView1.swift
//  LGCircleScrollView
//
//  Created by phiic on 16/11/18.
//  Copyright © 2016年 luogang. All rights reserved.
//

import Foundation
import UIKit


class LGCircleScrollView1:UIView
{
   
    
    let SCREEN_Width=UIScreen.mainScreen().bounds.size.width
    
    let SCREEN_Height=UIScreen.mainScreen().bounds.size.height
    
    let numberOfPages=4
    
    var scrollView=UIScrollView()
    
    var pagecontrol=UIPageControl()
    
    var mainTimer=NSTimer()
    
    var images=NSArray()


    override init(frame: CGRect) {
        
        
       
        super.init(frame: frame)
        self.createScrollView(frame)
        createPageControl()
    
        // addPageImages()
    
         addTimer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createScrollView(frame: CGRect)
    {
        
        scrollView.frame=frame
        
        scrollView.pagingEnabled=true
        
        
        scrollView.contentSize=CGSize(width: SCREEN_Width*3, height: 200)
        
        
        scrollView.backgroundColor=UIColor.orangeColor()
        
        
        self.addSubview(scrollView)
        
       
        
        
    }
    func createPageControl()
    {
        
        
        
        pagecontrol.frame=CGRect(x: 150, y:270, width: 60, height: 20)
        
        
        pagecontrol.backgroundColor=UIColor.blueColor()
        
        
        pagecontrol.numberOfPages=3
        
        pagecontrol.currentPage=0
        
        
        self.addSubview(pagecontrol)
        
        
        
    }
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        self.addTimer()
    }
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        self.removeTimer()
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
    {
        
        
        let width = CGRectGetWidth(scrollView.frame)
        
        print("width:\(width)")
        let offsetX = scrollView.contentOffset.x
        let index = offsetX / width
        print("当前页是：\(index)")
        
        self.pagecontrol.currentPage = Int(index)
    }
    
    
    func addPageImages(images:NSArray)
    {
        for i in 0...2
        {
        
           let imageview=UIImageView()
        
            imageview.frame=CGRect(x: SCREEN_Width*CGFloat(i), y: 0, width: SCREEN_Width, height: scrollView.bounds.height)
            
            
            print("imageview.fram:\(imageview.frame)")
            
            
            imageview.image=UIImage(named: images[i] as! String)
            
            
            scrollView.addSubview(imageview)

        
        
        
        }
        
    }
    func addTimer()
    {
        
        
        self.mainTimer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("autoShow"), userInfo: nil, repeats: true)
    }
    
    func removeTimer(){
        self.mainTimer.invalidate()
    }
    
    func autoShow()
    {
        var page = self.pagecontrol.currentPage
        if page==2
        {
            page = 0
        }
        else
        {
            page += 1
        }
        
        // 设置偏移量
        let offsetX = CGFloat(page) * CGRectGetWidth(self.scrollView.frame)
        self.scrollView.setContentOffset(CGPointMake(offsetX, 0.0), animated: true)
        self.pagecontrol.currentPage = page
    }

    

    


}


