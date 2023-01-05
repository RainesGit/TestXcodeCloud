//
//  ViewControllerTest3.swift
//  TestNavi
//
//  Created by LiangJie on 2022/12/27.
//

import UIKit

class ViewControllerTest3: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        let v = UIView()
        v.frame = CGRect(x: 0, y: 0, width: 375, height: 300)
        v.backgroundColor = .green
        self.view.addSubview(v)
        self.navigationController?.navigationBar.isTranslucent = false
//        self.navigationController?.navigationBar.isTranslucent = true
//        setNaviBarAppearance()
        
        self.navigationController!.navigationBar.barStyle = .default
        // Bars are translucent by default.
//        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.backgroundColor = .clear
        // Reset the bar's tint color to the system default.
        self.navigationController!.navigationBar.tintColor = nil
        self.navigationController!.navigationBar.barTintColor = nil
        self.navigationController!.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.label]
    }
    
    override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
//        self.navigationController?.navigationBar.isTranslucent = false

    }

    override func naviBarMetricsImage() -> UIImage? {
        return UIImage.ts_imageWithColor(.red)
    }
    
    override func naviBarShadowImage() -> UIImage? {
        return UIImage.ts_imageWithColor(UIColor.clear)
    }
    
    override func naviBackColor() -> UIColor? {
        return .black
    }

}
