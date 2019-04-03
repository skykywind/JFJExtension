//
//  UIView+Extension.swift
//  FBSnapshotTestCase
//
//  Created by JH on 2019/3/5.
//

import UIKit
import SnapKit

public extension UIView {
    // MARK: - 尺寸相关
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
    
    // MARK: - 尺寸裁剪相关
    /// 添加圆角
    ///
    /// - Parameter radius: 圆角半径
    func addRounded(radius:CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    /// 添加部分圆角
    ///
    /// - Parameters:
    ///   - radius: 圆角半径
    ///   - corners: 需要实现为圆角的角
    func addRounded(radius:CGFloat, corners: UIRectCorner) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask;
    }
    
    /// 添加边框
    ///
    /// - Parameters:
    ///   - width: 边框宽度
    ///   - borderColor: 边框颜色
    func addBorder(width : CGFloat, borderColor : UIColor = .black) {
        self.layer.borderWidth = width;
        self.layer.borderColor = borderColor.cgColor;
    }
    
    /// 添加阴影
    ///
    /// - Parameters:
    ///   - color: 阴影颜色
    ///   - opacity: 阴影透明度
    ///   - offset: 阴影偏移量
    ///   - radius: 阴影圆角半径
    func addShadow(color: UIColor = .black, opacity: Float = 0.1, offset: CGSize = .zero, radius: CGFloat = 1) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
    }
    
    // MARK: - 视图控制器
    /// View的视图控制器
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
    
    /// 设置父视图
    ///
    /// - Parameter superView: 父视图对象
    /// - Returns: self
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


