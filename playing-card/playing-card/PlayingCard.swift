//
//  PlayingCard.swift
//  playing-card
//
//  Created by Artyom Sadyrin on 11/4/18.
//  Copyright © 2018 Artyom Sadyrin. All rights reserved.
//

import Foundation

struct PlayingCard {
    var suit: Suit
    var rank: Rank
    
    enum Suit: String {
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
    }
    
    enum Rank {
        case 
    }
}
