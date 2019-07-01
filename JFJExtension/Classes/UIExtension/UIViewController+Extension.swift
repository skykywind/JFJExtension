//
//  UIViewController+Extension.swift
//  FBSnapshotTestCase
//
//  Created by 贾富佳 on 2019/4/23.
//

import UIKit

extension UIViewController {
    
    static var storyboardID: String {
        return self.description().components(separatedBy: ".").last!
    }
    
}
