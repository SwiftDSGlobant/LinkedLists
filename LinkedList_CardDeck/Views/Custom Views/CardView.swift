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
    var imageView: UIImageView!
    
    struct Constants {
        static let cornerRadius: CGFloat = 3.0
        static let frame: CGRect = CGRect(x: 20, y: 10, width: 60, height: 85)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        imageView.contentMode = .scaleToFill
        addSubview(imageView)
        layer.cornerRadius = Constants.cornerRadius
        clipsToBounds = true
        backgroundColor = .white
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCard(card: Card) {
        self.card = card
        imageView.image = UIImage(named: card.image.rawValue)
    }
    
}
