//
//  ViewController.swift
//  memorygame
//
//  Created by Marc Gela on 6/21/18.
//  Copyright © 2018 Marc Gela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
        flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    var emojis = ["😱", "👻", "🍍", "🍉"]
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButons: [UIButton]!
    
    @IBAction func flipCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButons.index(of: sender) {
            touchCard(withEmoji: emojis[cardNumber], on:sender)
        } else {
            print("was not in cards")
        }
        
    }
    
    func touchCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        }
    }
}

