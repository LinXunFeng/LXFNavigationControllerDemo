//
//  LXFNavigationController.swift
//  Swift 实现UINavigation全屏滑动返回(一)
//
//  Created by 林洵锋 on 2017/5/4.
//  Copyright © 2017年 林洵锋. All rights reserved.
//

import UIKit

class LXFNavigationController: UINavigationController {
    
    var popGesture: UIGestureRecognizerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.popGesture = self.interactivePopGestureRecognizer?.delegate
        self.delegate = self
    }
}

extension LXFNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if self.viewControllers[0] == viewController {  // 根控制器
            // 还原代理
            self.interactivePopGestureRecognizer?.delegate = self.popGesture
        } else {    // 非根控制器
            self.interactivePopGestureRecognizer?.delegate = nil
        }
        // 如果当前控制器为根控制器，则使手势失效，不然手势会将根控制器移除
        if self.viewControllers.count == 1 {
            self.interactivePopGestureRecognizer?.isEnabled = false
        } else {
            self.interactivePopGestureRecognizer?.isEnabled = true
        }
    }
}
