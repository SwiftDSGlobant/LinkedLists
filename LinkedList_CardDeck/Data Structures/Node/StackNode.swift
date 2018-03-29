//
//  StackNode.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/29/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

class StackNode<T> {
    var value: T
    var next: StackNode?
    init(value: T) {
        self.value = value
    }    
}
