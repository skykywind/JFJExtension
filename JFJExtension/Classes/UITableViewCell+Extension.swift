//
//  UITableViewCell+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/10.
//

import UIKit

public extension UITableViewCell {
    
    public static var iden: String {
        return self.description().components(separatedBy: ".").last!
    }
}
