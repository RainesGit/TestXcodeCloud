//
//  ViewControllerTest.swift
//  Example
//
//  Created by LiangJie on 2022/12/27.
//  Copyright © 2022 jiaxin. All rights reserved.
//

import UIKit

class ViewControllerTest: BaseViewController {
    var titleString = "shazi"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "导航栏下开始布局"
//        edgesForExtendedLayout = []
//        extendedLayoutIncludesOpaqueBars = false
        self.view.backgroundColor = .white
       
        
//        if let bar = self.navigationController?.navigationBar {
//            bar.addObserver(self, forKeyPath: "translucent",options: [.new,.old], context: nil)
////            bar.isTranslucent = false
//        }
      
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "translucent" {
           
            if var isTranslucent = change?[NSKeyValueChangeKey.newKey] {
                print("isTranslucent:\(isTranslucent)")
            }
        } else if keyPath == "title" {
            
        }
        else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    
    
    @objc func pushA() {
        self.navigationController?.pushViewController(ViewControllerTest(), animated: true)
    }
    
    @objc func pushB() {
        self.navigationController?.pushViewController(ViewControllerTest2(), animated: true)
    }
    
    @objc func pushC() {
        self.navigationController?.pushViewController(ViewControllerTest3(), animated: true)
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.extendedLayoutIncludesOpaqueBars = false
        navigationController?.navigationBar.setBackgroundImage(naviBarMetricsImage(), for: .default)
        
        let naviBarAppearance = UINavigationBarAppearance()
        naviBarAppearance.configureWithOpaqueBackground()
        naviBarAppearance.backgroundEffect = nil // 去掉半透明效果
        naviBarAppearance.backgroundImage = naviBarMetricsImage()
        naviBarAppearance.shadowImage = naviBarShadowImage()
        self.navigationController?.navigationBar.barStyle = .blackTranslucent
        navigationItem.scrollEdgeAppearance = naviBarAppearance
        navigationItem.standardAppearance = naviBarAppearance
        
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
        
//        UINavigationBar.appearance().standardAppearance = appearance
//        setNaviBarAppearance()
//        self.navigationController?.navigationBar.isTranslucent = true
//        self.navigationController?.navigationBar.barTintColor = UIColor.purple
        let v = UIView()
        v.frame = CGRect(x: 0, y: 0, width: 375, height: 300)
        v.backgroundColor = .yellow
        self.view.addSubview(v)
        
        let btn = UIButton.init(type: .system)
        btn.frame = CGRect(x: 0, y: 200, width: 80, height: 40)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(pushA), for: .touchUpInside)
        self.view.addSubview(btn)
        
        let btn2 = UIButton.init(type: .system)
        btn2.frame = CGRect(x: 90, y: 200, width: 80, height: 40)
        btn2.backgroundColor = .blue
        btn2.addTarget(self, action: #selector(pushB), for: .touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton.init(type: .system)
        btn3.frame = CGRect(x: 180, y: 200, width: 80, height: 40)
        btn3.backgroundColor = .green
        btn3.addTarget(self, action: #selector(pushC), for: .touchUpInside)
        self.view.addSubview(btn3)
        
        
    }
   

}


extension UIImage {
    /**
     Create UIImage with the color
     
     - parameter color: color
     
     - returns: UIImage
     */
    class func ts_imageWithColor(_ color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}
