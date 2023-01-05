//
//  ViewController.swift
//  TestNavi
//
//  Created by LiangJie on 2022/12/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton.init(type: .system)
        btn.frame = CGRect(x: 0, y: 100, width: 80, height: 40)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(pushA), for: .touchUpInside)
        self.view.addSubview(btn)
        self.title = "来看看"
    }
    @objc func pushA() {
        let v = ViewControllerTest()
        
     let nav = UINavigationController.init(rootViewController: v)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
        
//        self.navigationController?.pushViewController(ViewControllerTest(), animated: true)
    }

}

