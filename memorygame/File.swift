//
//  File.swift
//  memorygame
//
//  Created by Marc Gela on 6/22/18.
//  Copyright © 2018 Marc Gela. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = 0
    }
}
