//
//  Deck.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/21/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

class Deck {
    
    lazy var cards: DoublyLinkedList<Card> = DoublyLinkedList<Card>()
    
    static func randomCard() -> Card {
        let fullDeck = sample()
        let random = Int(arc4random_uniform(UInt32(fullDeck.count)))
        let card = fullDeck.node(atIndex: random)
        return card!.value
    }
    
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
