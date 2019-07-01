//
//  PathHelper.swift
//  TagAssist
//
//  Created by 贾富佳 on 2019/6/4.
//  Copyright © 2019 iHolon. All rights reserved.
//

import Foundation
import UIKit

class PathHelper: NSObject {

    static var homePath: String {
        return NSHomeDirectory()
    }

    static var documentPath: String {
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last! as String
    }
    
    static var cachePath: String {
        let cachePath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last! as String
        return cachePath
    }
    
    static var libraryPath: String {
        let libtraryPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] as String
        return libtraryPath
    }
    
    static var tempPath: String {
        let tempPath = NSTemporaryDirectory() as String
        return tempPath
    }
}
