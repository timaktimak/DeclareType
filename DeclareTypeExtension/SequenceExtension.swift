//
//  SequenceExtension.swift
//  DeclareTypeExtension
//
//  Created by Timur Galimov on 23/12/2016.
//  Copyright © 2016 Timur Galimov. All rights reserved.
//

import Foundation

extension Sequence {
    
    func findFirstOccurence(_ block: (Iterator.Element) -> Bool) -> Iterator.Element? {
        for x in self where block(x) {
            return x
        }
        return nil
    }
    
    func some(_ block: (Iterator.Element) -> Bool) -> Bool {
        return findFirstOccurence(block) != nil
    }
    
    func all(_ block: (Iterator.Element) -> Bool) -> Bool {
        return findFirstOccurence { !block($0) } == nil
    }
}
