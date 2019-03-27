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
                $0.addRounded(radius: 10, corners: [.topLeft, .bottomRight])
                $0.backgroundColor = UIColor.red
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

