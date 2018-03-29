//
//  Stack.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/29/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

class Stack<T> {
    
    typealias Node = StackNode<T>
    
    private var head: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        get {
            return head
        }
    }
    
    public var last: T? {
        return head?.value
    }
    
    func push(value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    func pop() -> T? {
        guard head != nil else { return nil }
        if head?.next == nil {
            let value = head?.value
            self.head = nil
            return value
        } else {
            let node = self.head
            self.head = self.head?.next
            let value = node?.value
            node?.next = nil
            return value
        }
    }
    
    func array() -> [T] {
        var elements: [T] = []
        var node: Node? = head
        while node != nil {
            elements.append(node!.value)
            node = node!.next
        }
        return elements
    }
    
}

extension Stack: CustomStringConvertible {
    public var description: String {
        var s = "["
        var node = head
        while node != nil {
            s += "\(node!.value)"
            node = node!.next
            if node != nil { s += ", " }
        }
        return s + "]"
    }
}

