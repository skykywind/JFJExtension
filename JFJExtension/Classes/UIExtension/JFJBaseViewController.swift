//
//  JFJBaseViewController.swift
//  FBSnapshotTestCase
//
//  Created by 贾富佳 on 2019/7/1.
//

import Foundation

protocol NotificationProtocal: NSObjectProtocol {
    func addNotifications()
    func removeNotifications()
}

class JFJBaseViewController: UIViewController, NotificationProtocal {
    
    deinit {
        removeNotifications()
    }
    
    override func viewDidLoad() {
        addNotifications()
    }
    
    func addNotifications() {}
    func removeNotifications() {}
}

