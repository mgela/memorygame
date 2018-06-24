//
//  ViewController.swift
//  memorygame
//
//  Created by Marc Gela on 6/21/18.
//  Copyright © 2018 Marc Gela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Memorygame(numberOfPairsOfCards: cardButons.count / 2)
    
    var flipCount = 0 {
        didSet {
        flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojis = ["😱", "👻", "🍍", "🍉", "🏄‍♀️", "🏀", "🎯", "🎮"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButons: [UIButton]!
    
    @IBAction func flipCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("was not in cards")
        }
    }
    
    func updateViewFromModel () {
        for index in cardButons.indices {
            let button = cardButons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 0) : #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
            }
        }
    }
    
    var emojiz = [Int: String]()
    
    func emoji (for card: Card) -> String {
        if emojiz[card.identifier] == nil, emojis.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojis.count)))
            emojiz[card.identifier] = emojis.remove(at: randomIndex)
        }
        return emojiz[card.identifier] ?? "?"
    }
}

