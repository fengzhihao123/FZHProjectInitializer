//
//  HomeViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/3/3.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        navigationController?.pushViewController(SubViewController(), animated: true)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLeftItem()
        view.backgroundColor = UIColor.red
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
}
