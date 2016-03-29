//
//  array.swift
//  MorshOSX
//
//  Created by jMath on 3/29/16.
//  Copyright © 2016 jMath. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    func indicesOf(searchValue: Element) -> [Int] {
        let enumerated = self.enumerate()
        return enumerated.reduce([Int]()) { result, value in
            let isSearchValue = value.element == searchValue
            return isSearchValue ? result + [value.index] : result
        }
    }
}