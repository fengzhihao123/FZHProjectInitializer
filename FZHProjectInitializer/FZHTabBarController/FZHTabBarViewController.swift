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
    public var tabBarHideStyle = TabbarHideStyle.normal
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }

    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for child in self.tabBar.subviews {
            if child.isKind(of: UIControl.self) {
                child.removeFromSuperview()
            }
        }
    }
    
    func setupTabbar() -> Void {
        let customTabBar = FZHTabBar(frame: self.tabBar.bounds)
        customTabBar.fzhTabbarDelegate = self
        self.tabBar.addSubview(customTabBar)
        self.customTabBar = customTabBar
    }
    
    //  MARK:FZHTabBarDelegate
    public func tabbar(_ tabbar: FZHTabBar, formWhichItem: Int, toWhichItem: Int) {
        self.selectedIndex = toWhichItem
    }
    
    public func setupChildVC(childVC: UIViewController, title: String, imageName: String, selectImageName: String){
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectImageName)?.withRenderingMode(.alwaysOriginal)
        let navigationCtrl = FZHNavigationController(rootViewController: childVC)
        navigationCtrl.tabbarHideStyle = tabBarHideStyle
        self.addChildViewController(navigationCtrl)
        self.customTabBar!.addTabbarButtonWith(item: childVC.tabBarItem, selectColor: selectColor, normalColor: normalColor)
    }
}
