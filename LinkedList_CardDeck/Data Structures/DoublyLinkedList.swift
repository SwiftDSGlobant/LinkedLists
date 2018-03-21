//
//  DoublyLinkedList.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/21/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

class DoublyLinkedList<T> {
    
    typealias Node = DoublyLinkedListNode<T>
    
    private var head: Node?
    private weak var tail: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        tail = node
        return node
    }
    
    public var count: Int {
        guard var node = head else {
            return 0
        }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }
    
    public func node(atIndex index: Int) -> Node? {
        if index == 0 {
            return head
        } else {
            var node = head?.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            return node
        }
    }
    
    public subscript(index: Int) -> T? {
        let node = self.node(atIndex: index)
        return node?.value
    }
    
    public func insert(_ node: Node, atIndex index: Int) {
        let newNode = node
        if index == 0 {
            newNode.next = head
            head?.previous = newNode
            head = newNode
        } else {
            let prev = self.node(atIndex: index-1)
            let next = prev?.next
            
            newNode.previous = prev
            newNode.next = prev?.next
            prev?.next = newNode
            next?.previous = newNode
        }
    }
    
    public func remove(node: Node) -> T? {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        node.previous = nil
        node.next = nil
        return node.value
    }
    
    public func removeLast() -> T? {
        guard !isEmpty else { return nil }
        tail = last?.previous
        return remove(node: last!)
    }
    
    public func removeAt(_ index: Int) -> T? {
        guard let node = self.node(atIndex: index) else { return nil }
        return remove(node: node)
    }
    
    public func removeAll() {
        head = nil
    }
}

extension DoublyLinkedList: CustomStringConvertible {
   
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

extension DoublyLinkedList {
    
    public func reverse() {
        var node = head
        tail = node
        while let currentNode = node {
            node = currentNode.next
            swap(&currentNode.next, &currentNode.previous)
            head = currentNode
        }
    }
    
    public func map<U>(transform: (T) -> U) -> LinkedList<U> {
        let result = LinkedList<U>()
        var node = head
        while node != nil {
            result.append(value: transform(node!.value))
            node = node!.next
        }
        return result
    }
    
    public func filter(predicate: (T) -> Bool) -> LinkedList<T> {
        let result = LinkedList<T>()
        var node = head
        while node != nil {
            if predicate(node!.value) {
                result.append(value: node!.value)
            }
            node = node!.next
        }
        return result
    }
    
    func swapNodes(a: Node, b: Node) {
        let node = a
        a.next = b.next
        a.next?.previous = a
        a.previous = b.previous
        a.previous?.next = a

        b.next = node.next
        b.next?.previous = b
        b.previous = node.previous
        b.previous?.next = b
    }
    
    public func shuffle() {
        
    }
    
}
