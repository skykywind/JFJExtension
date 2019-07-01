//
//  UIView+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/5.
//

import UIKit
import SnapKit

public extension UIView {

    var x:CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    
    var width: CGFloat {
        get {
            return frame.size.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            frame.size.height = newValue
        }
    }
    
    var size: CGSize {
        get {
            return frame.size
        }
        set {
            frame.size = newValue
        }
    }
    
    var centerX: CGFloat {
        get {
            return center.x
        }
        set {
            center.x = newValue
        }
    }
    
    var centerY: CGFloat {
        get {
            return center.y
        }
        set {
            center.y = newValue
        }
    }
    
    var left: CGFloat {
        get {
            return x
        }
        set {
            x = newValue
        }
    }
    
    var top: CGFloat {
        get {
            return y
        }
        set {
            y = newValue
        }
    }
    
    var right: CGFloat {
        get {
            return left + width
        }
        set {
            left = newValue - width
        }
    }
    
    var bottom: CGFloat {
        get {
            return top + height
        }
        set {
            top = newValue - height
        }
    }
    
    func addRounded(radius:CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }

    func addRounded(radius:CGFloat, corners: UIRectCorner) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask;
    }
    
    func addBorder(width : CGFloat, borderColor : UIColor = .black) {
        self.layer.borderWidth = width;
        self.layer.borderColor = borderColor.cgColor;
    }

    func addShadow(color: UIColor = .black, opacity: Float = 0.1, offset: CGSize = .zero, radius: CGFloat = 1) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
    }
    
    var viewController: UIViewController? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self){
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
}

public extension UIView {
    
    @discardableResult
    func addTo(_ superView: UIView) -> Self {
        superView.addSubview(self)
        return self
    }
    
    /// 设置约束
    ///
    /// - Parameter snapKitMaker: snapKitMaker对象
    /// - Returns: self
    @discardableResult
    func layout(_ snapKitMaker: (ConstraintMaker) -> Void) -> Self {
        self.snp.makeConstraints { (make) in
            snapKitMaker(make)
        }
        return self
    }
    
}

extension UIView: ViewChainable {}

public protocol ViewChainable {}
public extension ViewChainable where Self: UIView {

    /// 设置样式
    ///
    /// - Parameter config: 统一设置视图样式的block
    /// - Returns: self
    @discardableResult
    func config(_ config: (Self) -> Void) -> Self {
        config(self)
        return self
    }
    
}


