//
//  String+Extension.swift
//  JFJExtension
//
//  Created by 贾富佳 on 2019/8/8.
//

import Foundation

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let idx1 = index(startIndex, offsetBy: max(0, range.lowerBound))
        let idx2 = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[idx1..<idx2])
    }
}


// MARK: - Localized
extension String {
    
    var localized: String {
        return localized()
    }
    
    func localized(table: String? = nil, comment: String = "") -> String {
        return Bundle.main.localizedString(forKey: self, value: comment, table: table)
    }
}
