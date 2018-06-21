//
//  ViewController.swift
//  memorygame
//
//  Created by Marc Gela on 6/21/18.
//  Copyright © 2018 Marc Gela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func flipCard(_ sender: UIButton) {
        touchCard(withEmoji: "👻", on: sender)
    }
    
    func touchCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

