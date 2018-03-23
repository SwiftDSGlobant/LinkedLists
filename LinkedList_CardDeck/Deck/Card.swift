//
//  Card.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/22/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

enum CardState {
    case revealed
    case turnedDown
}

enum CardType {
    case Spades
    case Diamonds
    case Clubs
    case Hearts
}

struct Card {
    var value: Int
    var type: CardType
    var image: CardImage
    var state: CardState
}

enum CardImage: String {
    
    case AceOfSpades = "ace_of_spades.png"
    case AceOfDiamonds = "ace_of_diamonds.png"
    case AceOfHearts = "ace_of_hearts.png"
    case AceOfClubs = "ace_of_clubs.png"
    
    case TwoOfSpades = "2_of_spades.png"
    case TwoOfDiamonds = "2_of_diamonds.png"
    case TwoOfHearts = "2_of_hearts.png"
    case TwoOfClubs = "2_of_clubs.png"
    
    case ThreeOfSpades = "3_of_spades.png"
    case ThreeOfDiamonds = "3_of_diamonds.png"
    case ThreeOfHearts = "3_of_hearts.png"
    case ThreeOfClubs = "3_of_clubs.png"
    
    case FourOfSpades = "4_of_spades.png"
    case FourOfDiamonds = "4_of_diamonds.png"
    case FourOfHearts = "4_of_hearts.png"
    case FourOfClubs = "4_of_clubs.png"
    
    case FiveOfSpades = "5_of_spades.png"
    case FiveOfDiamonds = "5_of_diamonds.png"
    case FiveOfHearts = "5_of_hearts.png"
    case FiveOfClubs = "5_of_clubs.png"
    
    case SixOfSpades = "6_of_spades.png"
    case SixOfDiamonds = "6_of_diamonds.png"
    case SixOfHearts = "6_of_hearts.png"
    case SixOfClubs = "6_of_clubs.png"
    
    case SevenOfSpades = "7_of_spades.png"
    case SevenOfDiamonds = "7_of_diamonds.png"
    case SevenOfHearts = "7_of_hearts.png"
    case SevenOfClubs = "7_of_clubs.png"
    
    case EightOfSpades = "8_of_spades.png"
    case EightOfDiamonds = "8_of_diamonds.png"
    case EightOfHearts = "8_of_hearts.png"
    case EightOfClubs = "8_of_clubs.png"
    
    case NineOfSpades = "9_of_spades.png"
    case NineOfDiamonds = "9_of_diamonds.png"
    case NineOfHearts = "9_of_hearts.png"
    case NineOfClubs = "9_of_clubs.png"
    
    case TenOfSpades = "10_of_spades.png"
    case TenOfDiamonds = "10_of_diamonds.png"
    case TenOfHearts = "10_of_hearts.png"
    case TenOfClubs = "10_of_clubs.png"
    
    case JackOfSpades = "jack_of_spades.png"
    case JackOfDiamonds = "jack_of_diamonds.png"
    case JackOfHearts = "jack_of_hearts.png"
    case JackOfClubs = "jack_of_clubs.png"
    
    case KingOfSpades = "king_of_spades.png"
    case KingOfDiamonds = "king_of_diamonds.png"
    case KingOfHearts = "king_of_hearts.png"
    case KingOfClubs = "king_of_clubs.png"
    
    case QueenOfSpades = "queen_of_spades.png"
    case QueenOfDiamonds = "queen_of_diamonds.png"
    case QueenOfHearts = "queen_of_hearts.png"
    case QueenOfClubs = "queen_of_clubs.png"
    
    case RedJoker = "red_joker.png"
}
