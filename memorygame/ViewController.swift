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
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        
        touchCard(withEmoji: "🎃", on: sender)
    }
    
    @IBAction func flipCard(_ sender: UIButton) {
        flipCount += 1
        
        touchCard(withEmoji: "👻", on: sender)
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

