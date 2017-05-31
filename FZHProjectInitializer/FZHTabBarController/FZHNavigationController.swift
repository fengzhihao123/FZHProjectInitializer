//
//  FZHNavigationController.swift
//  03-FZHTabBarController(swift)
//
//  Created by 冯志浩 on 16/8/12.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit
public enum TabbarHideStyle {
    //  animation
    case animation
    //  normal
    case normal
}
public class FZHNavigationController: UINavigationController, UINavigationControllerDelegate {
    var tabbarHideStyle = TabbarHideStyle.normal
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
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
    //pushViewController
    override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            let rootVC = self.viewControllers[0]
            if tabbarHideStyle == TabbarHideStyle.animation {
                UIView.animate(withDuration: 0.35, animations: {
                    rootVC.tabBarController?.tabBar.transform = CGAffineTransform(translationX: 0, y: 64)
                })
            } else {
                viewController.hidesBottomBarWhenPushed = true
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    //popToRootViewController
    public override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        super.popToRootViewController(animated: animated)
        tabBarHandler()
        return nil
    }
    
    // popViewController
    public override func popViewController(animated: Bool) -> UIViewController? {
        super.popViewController(animated: animated)
        tabBarHandler()
        return self.viewControllers[0]
    }
    
    //popToViewController
    public override func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        super.popToViewController(viewController, animated: true)
        tabBarHandler()
        return nil
    }
    
    //MARK: UINavigationControllerDelegate - 解决TabBar重影
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        for tabBar in (tabBarController?.tabBar.subviews)! {
            if tabBar.isKind(of: NSClassFromString("UITabBarButton")!) {
                tabBar.removeFromSuperview()
            }
        }
    }
    
    //handler tabbar
    func tabBarHandler() {
        if self.viewControllers.count == 1 {
            let rootVC = self.viewControllers[0]
            if tabbarHideStyle == TabbarHideStyle.animation {
                UIView.animate(withDuration: 0.35, animations: {
                    rootVC.tabBarController?.tabBar.transform = CGAffineTransform.identity
                })
            } else {
                let rootVC = self.viewControllers[0]
                rootVC.hidesBottomBarWhenPushed = false
            }
        }
    }
}
