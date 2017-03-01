//
//  FZHNavigationController.swift
//  03-FZHTabBarController(swift)
//
//  Created by 冯志浩 on 16/8/12.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit
public enum TabbarHideStyle {
//    有动画
    case tabbarHideWithAnimation
//    无动画
    case tabbarHideWithNoAnimation
}
public class FZHNavigationController: UINavigationController {
    var tabbarHideStyle = TabbarHideStyle.tabbarHideWithNoAnimation
    
    override public func viewDidLoad() {
        super.viewDidLoad()

    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            let rootVC = self.viewControllers[0]
//            是否添加动画
            if tabbarHideStyle == TabbarHideStyle.tabbarHideWithAnimation {
                UIView.animate(withDuration: 0.35, animations: {
                    rootVC.tabBarController?.tabBar.transform = CGAffineTransform(translationX: 0, y: 64)
                })
            }else{
                viewController.hidesBottomBarWhenPushed = true
            }
        }
        super.pushViewController(viewController, animated: true)
    }
    
    public override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        if self.viewControllers.count > 0 {
            let rootVC = self.viewControllers[0]
            if tabbarHideStyle == TabbarHideStyle.tabbarHideWithAnimation {
                UIView.animate(withDuration: 0.35, animations: {
                    rootVC.tabBarController?.tabBar.transform = CGAffineTransform.identity
                })
            }else{
                let rootVC = self.viewControllers[0]
                rootVC.hidesBottomBarWhenPushed = false
            }
        }
        super.popToRootViewController(animated: true)
        return nil
    }
    
    public override func popViewController(animated: Bool) -> UIViewController? {
        if self.viewControllers.count > 0 {
            let rootVC = self.viewControllers[0]
            if tabbarHideStyle == TabbarHideStyle.tabbarHideWithAnimation {
                UIView.animate(withDuration: 0.35, animations: {
                    rootVC.tabBarController?.tabBar.transform = CGAffineTransform.identity
                })
            }else{
                let rootVC = self.viewControllers[0]
                rootVC.hidesBottomBarWhenPushed = false
            }
        }
        let rootVC = self.viewControllers[0]
        super.popViewController(animated: true)
        return rootVC
    }
    
}
