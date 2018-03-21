//
//  Deck.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/21/18.
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

class Deck {
    
    lazy var cards: DoublyLinkedList<Card> = DoublyLinkedList<Card>()
    
    
    
    static func sample() -> DoublyLinkedList<Card> {
        let sampleDeck: DoublyLinkedList<Card> = DoublyLinkedList<Card>()
        
        sampleDeck.append(value: Card(value: 1, type: .Spades, image: .AceOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 1, type: .Diamonds, image: .AceOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 1, type: .Clubs, image: .AceOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 1, type: .Hearts, image: .AceOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 2, type: .Spades, image: .TwoOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 2, type: .Diamonds, image: .TwoOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 2, type: .Clubs, image: .TwoOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 2, type: .Hearts, image: .TwoOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 3, type: .Spades, image: .ThreeOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 3, type: .Diamonds, image: .ThreeOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 3, type: .Clubs, image: .ThreeOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 3, type: .Hearts, image: .ThreeOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 4, type: .Spades, image: .FourOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 4, type: .Diamonds, image: .FourOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 4, type: .Clubs, image: .FourOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 4, type: .Hearts, image: .FourOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 5, type: .Spades, image: .FiveOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 5, type: .Diamonds, image: .FiveOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 5, type: .Clubs, image: .FiveOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 5, type: .Hearts, image: .FiveOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 6, type: .Spades, image: .SixOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 6, type: .Diamonds, image: .SixOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 6, type: .Clubs, image: .SixOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 6, type: .Hearts, image: .SixOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 7, type: .Spades, image: .SevenOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 7, type: .Diamonds, image: .SevenOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 7, type: .Clubs, image: .SevenOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 7, type: .Hearts, image: .SevenOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 8, type: .Spades, image: .EightOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 8, type: .Diamonds, image: .EightOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 8, type: .Clubs, image: .EightOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 8, type: .Hearts, image: .EightOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 9, type: .Spades, image: .NineOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 9, type: .Diamonds, image: .NineOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 9, type: .Clubs, image: .NineOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 9, type: .Hearts, image: .NineOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 10, type: .Spades, image: .TenOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 10, type: .Diamonds, image: .TenOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 10, type: .Clubs, image: .TenOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 10, type: .Hearts, image: .TenOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 11, type: .Spades, image: .JackOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 11, type: .Diamonds, image: .JackOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 11, type: .Clubs, image: .JackOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 11, type: .Hearts, image: .JackOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 12, type: .Spades, image: .QueenOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 12, type: .Diamonds, image: .QueenOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 12, type: .Clubs, image: .QueenOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 12, type: .Hearts, image: .QueenOfHearts, state: .revealed))
        
        sampleDeck.append(value: Card(value: 13, type: .Spades, image: .KingOfSpades, state: .revealed))
        sampleDeck.append(value: Card(value: 13, type: .Diamonds, image: .KingOfDiamonds, state: .revealed))
        sampleDeck.append(value: Card(value: 13, type: .Clubs, image: .KingOfClubs, state: .revealed))
        sampleDeck.append(value: Card(value: 13, type: .Hearts, image: .KingOfHearts, state: .revealed))
        
        return sampleDeck
    }
    
    
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
