//
//  LeftViewController.swift
//  Demo
//
//  Created by 冯志浩 on 2017/3/9.
//  Copyright © 2017年 FZH. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
    let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tableView.frame = CGRect(x: 0, y: 0, width: 300, height: SCREEN_HEIGHT)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    //    MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "tableViewcell")
        cell.textLabel?.text = "left"
        return cell
    }
    //    MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let temAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let subVC = SubViewController()
        let mainNavi = temAppDelegate.fzhTabBar.viewControllers?[0] as! UINavigationController
        
        mainNavi.pushViewController(subVC, animated: false)
        temAppDelegate.fzhDrawerVC.hideLeftView()
    }

}
