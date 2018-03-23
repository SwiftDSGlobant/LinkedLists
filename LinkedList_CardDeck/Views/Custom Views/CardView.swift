//
//  CardView.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/22/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation
import UIKit

class CardView: UIView {
    
    var card: Card?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCard(card: Card) {
        self.card = card
    }
    
    
}
