//
//  FirstViewController.swift
//  Swift 实现UINavigation全屏滑动返回(一)
//
//  Created by 林洵锋 on 2017/5/4.
//  Copyright © 2017年 林洵锋. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.yellow
        // 添加按钮
        self.addBtn()
    }
    
    func addBtn() {
        let btn = UIButton(type: .custom)
        
        btn.addTarget(self, action: #selector(btnPress), for: .touchUpInside)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        btn.backgroundColor = UIColor.gray
        btn.setTitle("点我", for: .normal)
        
        self.view.addSubview(btn)
    }
    
    @objc func btnPress() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }

}
