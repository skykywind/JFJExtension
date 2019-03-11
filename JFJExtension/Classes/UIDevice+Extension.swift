//
//  UIDevice+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/10.
//

import UIKit

public extension UIDevice {
    
    /// 是否是“刘海”屏幕
    public static var isProfiledScreen: Bool {
        get {
            guard #available(iOS 11.0, *) else {
                return false
            }
            return UIApplication.shared.windows[0].safeAreaInsets.top == 44
        }
    }
    
    public static var sceenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    public static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    public static var naviBarHeight: CGFloat {
        return isProfiledScreen ? 88 : 64
    }
    
    public static var tabBarHeight: CGFloat {
        return isProfiledScreen ? 83 : 49
    }
    
    public static var adaptNavHeight: CGFloat {
        return isProfiledScreen ? 24 : 0
    }
    
    public static var adaptTabHeight: CGFloat {
        return isProfiledScreen ? 34 : 0
    }
    
}
