//
//  UIDevice+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/10.
//

import UIKit

public extension UIScreen {
    
    /// 是否是“刘海”屏幕
    static var isProfiled: Bool {
        get {
            guard #available(iOS 11.0, *) else {
                return false
            }
            return UIApplication.shared.windows[0].safeAreaInsets.top == 44
        }
    }
    
    static var width: CGFloat {
        return UIScreen.main.bounds.width
    }

    static var height: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var naviBarHeight: CGFloat {
        return isProfiled ? 88 : 64
    }
    
    static var tabBarHeight: CGFloat {
        return isProfiled ? 83 : 49
    }
    
    static var adaptNavHeight: CGFloat {
        return isProfiled ? 24 : 0
    }
    
    static var adaptTabHeight: CGFloat {
        return isProfiled ? 34 : 0
    }
    
    static var safeAreaHeight: CGFloat {
        return height - adaptNavHeight - adaptTabHeight
    }
  
    static var heightBelowNaviBar: CGFloat {
        return height - naviBarHeight
    }
    
    static var heightAboveTabBar: CGFloat {
        return height - tabBarHeight
    }
    
    static var heightBetweenBars: CGFloat {
        return height - naviBarHeight - tabBarHeight
    }
}


