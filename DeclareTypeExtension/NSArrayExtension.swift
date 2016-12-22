//
//  NSArrayExtension.swift
//  DeclareTypeExtension
//
//  Created by Timur Galimov on 23/12/2016.
//  Copyright © 2016 Timur Galimov. All rights reserved.
//

import Foundation

extension NSArray {
    
    func safeObject(atIndex index: Int) -> Any? {
        if index < count {
            return self[index]
        }
        return nil
    }
}
