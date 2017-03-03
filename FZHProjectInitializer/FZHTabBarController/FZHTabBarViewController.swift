//
//  FZHTableViewController.swift
//  03-FZHTabBarController(swift)
//
//  Created by 冯志浩 on 16/8/12.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit

public class FZHTabBarViewController: UITabBarController,FZHTabBarDelegate {

    public weak var customTabBar = FZHTabBar()
    public var selectColor = UIColor.blue
    public var normalColor = UIColor.black
    public var isAnimation = TabbarHideStyle.tabbarHideWithNoAnimation
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }
//    delete origin tabbar
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for child in self.tabBar.subviews {
            if child.isKind(of: UIControl.self) {
                child.removeFromSuperview()
            }
        }
    }
    
    func setupTabbar() -> Void {
        let customTabBar = FZHTabBar.init(frame: self.tabBar.bounds)
        customTabBar.fzhTabbarDelegate = self
        self.tabBar.addSubview(customTabBar)
        self.customTabBar = customTabBar
    }
    
//    MARK:FZHTabBarDelegate
    public func tabbar(_ tabbar: FZHTabBar, formWhichItem: Int, toWhichItem: Int) {
        self.selectedIndex = toWhichItem
    }
    
    public func setupChildVC(_ childVC: UIViewController,title: String,imageName: String,selectImageName: String){
        
        childVC.title = title
        childVC.tabBarItem.image = UIImage.init(named: imageName)
//        不在渲染图片
        childVC.tabBarItem.selectedImage = UIImage.init(named: selectImageName)?.withRenderingMode(.alwaysOriginal)
        
        let navigationCtrl = FZHNavigationController.init(rootViewController: childVC)
        navigationCtrl.tabbarHideStyle = isAnimation
        self.addChildViewController(navigationCtrl)
//        添加tabbar内部按钮
        self.customTabBar!.addTabbarButtonWith(item: childVC.tabBarItem, selectColor: selectColor, normalColor: normalColor)
    }
}
