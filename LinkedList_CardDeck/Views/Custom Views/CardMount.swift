//
//  CardMount.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/29/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation
import UIKit

class CardMount: UIView {
    
    let cards: Stack<Card> = Stack<Card>()
    
    func addCard(card: Card) {
        cards.push(value: card)
        displayCards()
    }
    
    func removeCard() -> Card? {
        return cards.pop()
    }
    
    func displayCards() {
        let cards = self.cards.array().reversed()
        var offset: CGFloat = 0
        for card in cards {
            let cardView = CardView(frame: CardView.Constants.frame)
            cardView.frame.origin.y += offset
            offset += 15.0
            cardView.setCard(card: card)
            addSubview(cardView)
        }
    }
    
}
