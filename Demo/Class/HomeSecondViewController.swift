//
//  HomeSecondViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/5/31.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit

class HomeSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "second"
        view.backgroundColor = UIColor.blue
        setupButton()
    }

    
    func setupButton() {
        let popButton = UIButton()
        popButton.backgroundColor = UIColor.black
        popButton.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        popButton.addTarget(self, action: #selector(popButtonDidTouch), for: .touchUpInside)
        popButton.setTitle("pop", for: .normal)
        view.addSubview(popButton)
    }
    
    func popButtonDidTouch() {
        navigationController?.popToRootViewController(animated: true)
    }
}
