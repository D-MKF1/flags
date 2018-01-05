//
//  Randomizing.swift
//  Flags
//
//  Created by Marc Kraus on 30.12.17.
//  Copyright © 2017 Marc Kraus. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for _ in 0..<((count>0) ? (count-1) : 0) {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}
