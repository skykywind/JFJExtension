//
//  UIDevice+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/10.
//

import UIKit

public extension UIDevice {
    
    /// 是否是“刘海”屏幕
    static var isProfiledScreen: Bool {
        get {
            guard #available(iOS 11.0, *) else {
                return false
            }
            return UIApplication.shared.windows[0].safeAreaInsets.top == 44
        }
    }
    
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var naviBarHeight: CGFloat {
        return isProfiledScreen ? 88 : 64
    }
    
    static var tabBarHeight: CGFloat {
        return isProfiledScreen ? 83 : 49
    }
    
    static var adaptNavHeight: CGFloat {
        return isProfiledScreen ? 24 : 0
    }
    
    static var adaptTabHeight: CGFloat {
        return isProfiledScreen ? 34 : 0
    }
  
}
