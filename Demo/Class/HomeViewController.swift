//
//  HomeViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/3/3.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let pushButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLeftItem()
        setupButton()
        view.backgroundColor = UIColor.red
    }
    
    func setupButton() {
        pushButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        pushButton.setTitle("push", for: .normal)
        pushButton.addTarget(self, action: #selector(pushDidTouch), for: .touchUpInside)
        view.addSubview(pushButton)
    }
    
    func setupLeftItem() -> Void {
        let leftItem = UIBarButtonItem(title: "left", style: .done, target: self, action: #selector(itemDidTouch))
        navigationItem.leftBarButtonItem = leftItem
    }
    
    func itemDidTouch() -> Void {
        let temAppDelegate = UIApplication.shared.delegate as! AppDelegate
        if temAppDelegate.fzhDrawerVC.isShow {
            temAppDelegate.fzhDrawerVC.hideLeftView()
        }else{
            temAppDelegate.fzhDrawerVC.showLeftView()
        }
    }
    
    func pushDidTouch() {
        navigationController?.pushViewController(HomeDetailViewController(), animated: true)
    }
}
