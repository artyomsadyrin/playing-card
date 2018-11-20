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

    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(showNextCard))
            swipe.direction = .left
            playingCardView.addGestureRecognizer(swipe)
        }
    }
    
    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended:
            playingCardView.isFaceUp = !playingCardView.isFaceUp
        default:
            break
        }
    }
    
    @objc func showNextCard() {
        if let card = deck.draw() {
            playingCardView.suit = card.suit.rawValue
            playingCardView.rank = card.rank.order
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

