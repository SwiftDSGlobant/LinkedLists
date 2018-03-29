//
//  ViewController.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/20/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardMount: CardMount!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        cardMount.addCard(card: Deck.randomCard())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

