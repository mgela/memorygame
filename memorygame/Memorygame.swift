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
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        print(cards)
    }
    // shuffle cards
}
