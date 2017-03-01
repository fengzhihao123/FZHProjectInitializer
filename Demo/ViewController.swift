//
//  ViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/2/28.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit
import FZHProjectInitializer
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(SubViewController(), animated: true)
    }
    


}

