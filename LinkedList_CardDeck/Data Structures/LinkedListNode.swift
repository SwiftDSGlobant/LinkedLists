//
//  LinkedListNode.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/21/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation


class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    public init(value: T) {
        self.value = value
    }
}

class DoublyLinkedListNode<T> {
    var value: T
    var next: DoublyLinkedListNode?
    weak var previous: DoublyLinkedListNode?
    public init(value: T) {
        self.value = value
    }
}
