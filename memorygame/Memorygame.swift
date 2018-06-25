//
//  Memorygame.swift
//  memorygame
//
//  Created by Marc Gela on 6/22/18.
//  Copyright © 2018 Marc Gela. All rights reserved.
//

import Foundation

class Memorygame
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            } else {
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        
        
        
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        
        var shuffledCards = [Card]()
        
        for _ in 0..<cards.count {
            let rand = Int(arc4random_uniform(UInt32(cards.count)))
            print(cards[1], cards[2])
            shuffledCards.append(cards[rand])
        }
        cards = shuffledCards
    }
}
