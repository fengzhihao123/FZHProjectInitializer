//
//  ExampleTabBarViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/3/9.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit
import FZHProjectInitializer
class ExampleTabBarViewController: FZHTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initChildVC()
    }
    
    func initChildVC() {
        let homeVC = HomeViewController()
        let findVC = FindViewController()
        let messageVC = MessageViewController()
        let meVC = MeViewController()
        
        self.selectColor = UIColor.red
        self.normalColor = UIColor.brown
        self.tabBarHideStyle = TabbarHideStyle.normal
        self.setupChildVC(childVC: homeVC, title: "home", imageName: "home_normal", selectImageName: "home_select")
        self.setupChildVC(childVC: findVC, title: "find", imageName: "find_normal", selectImageName: "find_select")
        self.setupChildVC(childVC: messageVC, title: "message", imageName: "message_normal", selectImageName: "message_select")
        self.setupChildVC(childVC: meVC, title: "me", imageName: "me_normal", selectImageName: "me_select")
    }
}
