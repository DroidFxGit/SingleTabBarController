//
//  MainTabBarController.swift
//  SingleTabBarController
//
//  Created by DroidFx on 3/9/16.
//  Copyright © 2016 DroidFx. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    let bgColor = UIColor(red: 0.08, green: 0.726, blue: 0.702, alpha: 1.0)
    
    var bgView: UIView!
    var itemWidth: CGFloat!
    var positionX: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainTabBar = UITabBar.appearance()
        mainTabBar.tintColor = UIColor.whiteColor()
        mainTabBar.barTintColor = UIColor.blackColor()
        
        calculateSizeOfItem()
        makeCustomBackGroundItem()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calculateSizeOfItem()
        bgView.frame = CGRectMake(positionX, 0, itemWidth, tabBar.frame.height)
    }
    
    func calculateSizeOfItem() {
        //        let itemIndex = 2
        itemWidth = tabBar.frame.width / CGFloat(tabBar.items!.count)
        positionX = itemWidth * 2
    }
    
    func makeCustomBackGroundItem() {
        
        bgView = UIView(frame: CGRectMake(positionX, 0, itemWidth, tabBar.frame.height))
        bgView.backgroundColor = bgColor
        tabBar.insertSubview(bgView, atIndex: 0)
        
    }
}
