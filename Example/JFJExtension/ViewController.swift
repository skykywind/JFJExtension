//
//  ViewController.swift
//  JFJExtension
//
//  Created by skykywind on 03/05/2019.
//  Copyright (c) 2019 skykywind. All rights reserved.
//

import UIKit
import JFJExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        _ = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
            .addTo(view)
            .config {
                $0.addRounded(radius: 10, corners: [.topLeft, .topRight])
                $0.backgroundColor = UIColor.red
            }.layout({ (make) in
                make.left.top.equalToSuperview().offset(100)
                make.width.height.equalTo(200)
            })
        _ = UILabel()
            .addTo(view)
            .config({ (label) in
                label.font = UIFont.systemFont(ofSize: 16)
                label.text = "Hello world"
            })
            .layout({ (make) in
                make.left.equalToSuperview().offset(100)
                make.top.equalToSuperview().offset(300)
                make.size.equalTo(CGSize(width: 100, height: 100))
            })
    }

}

