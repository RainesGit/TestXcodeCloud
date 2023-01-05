//
//  BaseViewController.swift
//  TestNavi
//
//  Created by LiangJie on 2022/12/27.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNaviBarAppearance()
        
    }

    // 设置导航栏外观
    func setNaviBarAppearance() {
        if navigationController?.topViewController == self {
            navigationController?.navigationBar.barStyle = .black
            navigationController?.navigationBar.setBackgroundImage(naviBarMetricsImage(), for: .default)
            navigationController?.navigationBar.shadowImage = naviBarShadowImage()
            navigationController?.navigationBar.tintColor = naviBackColor()
            //导航栏的外观：优先询问导航栏本身，然后继续询问其子视图控制器(UINavigationBarAppearance 的配置会覆盖原有的配置)
            if #available(iOS 13, *) {
                let naviBarAppearance = UINavigationBarAppearance()
        
                naviBarAppearance.backgroundEffect = nil // 去掉半透明效果
                naviBarAppearance.backgroundImage = naviBarMetricsImage()
                naviBarAppearance.shadowImage = naviBarShadowImage()
                naviBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: naviBackColor() as Any]
                let back_i = UIImage(named: "ic_back_black")
                naviBarAppearance.setBackIndicatorImage(back_i, transitionMaskImage: back_i)
                navigationItem.scrollEdgeAppearance = naviBarAppearance
                navigationItem.standardAppearance = naviBarAppearance
            }
        }
    }
    func naviBarMetricsImage() -> UIImage? {
        return UIImage.ts_imageWithColor(.white)
    }
    
    func naviBarShadowImage() -> UIImage? {
        return UIImage.ts_imageWithColor(UIColor.clear)
    }
    
    func naviBackColor() -> UIColor? {
        return .black
    }

}
