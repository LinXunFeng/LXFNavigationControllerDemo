//
//  SecondViewController.swift
//  Swift 实现UINavigation全屏滑动返回(一)
//
//  Created by 林洵锋 on 2017/5/4.
//  Copyright © 2017年 林洵锋. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        // 自定义返回按钮
        self.setNavBackBtn()
    }
    
    func setNavBackBtn() {
        
        let btn = UIButton(type: .custom)
        btn.setTitle("返回", for: .normal)
        btn.addTarget(self, action: #selector(back), for: .touchUpInside)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
    
    @objc func back() {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
