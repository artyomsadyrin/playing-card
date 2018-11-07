//
//  ViewController.swift
//  playing-card
//
//  Created by Artyom Sadyrin on 11/4/18.
//  Copyright © 2018 Artyom Sadyrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

