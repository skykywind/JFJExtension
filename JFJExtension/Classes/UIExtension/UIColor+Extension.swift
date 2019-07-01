//
//  UIColor+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/10.
//

import UIKit

public extension UIColor {
    
    /// rgb构造方法
    ///
    /// - Parameters:
    ///   - r: red
    ///   - g: green
    ///   - b: blue
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }
    
    /// 16进制颜色值构造方法
    ///
    /// - Parameter hexString: 16进制颜色, 例如 #ffffff， 0Xab00ee, 0xeeeeee, 333333
    convenience init(hexString: String) {
        
        guard hexString.count >= 6 else {
            self.init(r: 255, g: 255, b: 255)
            return
        }
        
        var hexTempString = hexString.uppercased()
        
        if(hexTempString.hasPrefix("##") || hexTempString.hasPrefix("0X") || hexTempString.hasPrefix("0x")){
            hexTempString = (hexTempString as NSString).substring(from: 2)
        }
        
        if(hexTempString.hasPrefix("#")){
            hexTempString = (hexTempString as NSString).substring(from: 1)
        }
        
        var range = NSRange(location: 0, length: 2)
        let rHex = (hexTempString as NSString).substring(with: range)
        range.location = 2
        let gHex = (hexTempString as NSString).substring(with: range)
        range.location = 4
        let bHex = (hexTempString as NSString).substring(with: range)
        
        var r: UInt32 = 0
        var g: UInt32 = 0
        var b: UInt32 = 0
        Scanner(string: rHex).scanHexInt32(&r)
        Scanner(string: gHex).scanHexInt32(&g)
        Scanner(string: bHex).scanHexInt32(&b)
        self.init(r: CGFloat(r), g: CGFloat(g), b: CGFloat(b))
    }
    
    
    /// 获取随机颜色
    ///
    /// - Returns: UIColor
    class func getRandomColor() -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(256))/255.0, green: CGFloat(arc4random_uniform(256))/255.0, blue: CGFloat(arc4random_uniform(256))/255.0, alpha: 1.0)
    }
    
}
