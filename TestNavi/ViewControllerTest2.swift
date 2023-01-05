//
//  ViewControllerTest2.swift
//  TestNavi
//
//  Created by LiangJie on 2022/12/27.
//

import UIKit

class ViewControllerTest2: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        let v = UIView()
        v.frame = CGRect(x: 0, y: 0, width: 375, height: 300)
        v.backgroundColor = .gray
        self.view.addSubview(v)
        self.title = "设置透明"
        self.edgesForExtendedLayout = .all
        self.navigationController?.navigationBar.barTintColor = .clear
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNaviBarAppearance()
        
    }

    override func naviBarMetricsImage() -> UIImage? {
        return UIImage()
    }
    
    override func naviBarShadowImage() -> UIImage? {
        return UIImage.ts_imageWithColor(UIColor.clear)
    }
    
    override func naviBackColor() -> UIColor? {
        return .black
    }
}
