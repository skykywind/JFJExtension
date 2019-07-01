//
//  Array+Extension.swift
//  FBSnapshotTestCase
//
//  Created by 贾富佳 on 2019/7/1.
//

import Foundation

extension Array where Element: Hashable {
    
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()
        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
    
    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
