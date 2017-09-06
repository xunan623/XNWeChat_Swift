//
//  XNMainController.swift
//  XNWeChatSwift
//
//  Created by xunan on 2017/8/4.
//  Copyright © 2017年 xunan. All rights reserved.
//

import UIKit

class XNMainController: UITabBarController {
    
    let textColor = RGBA(r: 0.51, g: 0.51, b: 0.51, a: 1.00)

    override func viewDidLoad() {
        super.viewDidLoad()

        // 创建子控制器
        self.createSubViewControllers()
        
        // 设置tabBarItem选中与未选中的文字颜色
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:textColor, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState.normal)
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:kBtnGreen, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState.selected)

    }
    
    // MARK:- 创建自控制器
    func createSubViewControllers() {
        
        let wechatVC = XNWeChatController()
        let wechatItem: UITabBarItem = UITabBarItem(title: "微信",
                                                    image: #imageLiteral(resourceName: "tabbar_mainframe").withRenderingMode(.alwaysOriginal),
                                            selectedImage: #imageLiteral(resourceName: "tabbar_mainframeHL").withRenderingMode(.alwaysOriginal))
        wechatVC.tabBarItem = wechatItem
         
    }
}
