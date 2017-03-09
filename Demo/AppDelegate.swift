//
//  AppDelegate.swift
//  Demo
//
//  Created by 冯志浩 on 2017/2/28.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit
import FZHProjectInitializer
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var fzhDrawerVC = FZHDrawerViewController()
    let leftVC = LeftViewController()
    let fzhTabBar = FZHTabBarViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let homeVC = HomeViewController()
        let findVC = FindViewController()
        let messageVC = MessageViewController()
        let meVC = MeViewController()
        
        fzhTabBar.selectColor = UIColor.red
        fzhTabBar.normalColor = UIColor.brown
        fzhTabBar.tabBarHideStyle = TabbarHideStyle.normal
        fzhTabBar.setupChildVC(childVC: homeVC, title: "home", imageName: "home_normal", selectImageName: "home_select")
        fzhTabBar.setupChildVC(childVC: findVC, title: "find", imageName: "find_normal", selectImageName: "find_select")
        fzhTabBar.setupChildVC(childVC: messageVC, title: "message", imageName: "message_normal", selectImageName: "message_select")
        fzhTabBar.setupChildVC(childVC: meVC, title: "me", imageName: "me_normal", selectImageName: "me_select")
//        window?.rootViewController = fzhTabBar
        
        fzhDrawerVC = fzhDrawerVC.initSubVC(leftControl: leftVC, mainControl: fzhTabBar) as! FZHDrawerViewController
        self.window?.rootViewController = fzhDrawerVC
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

