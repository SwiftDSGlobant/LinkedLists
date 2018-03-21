//
//  LinkedList.swift
//  LinkedList_CardDeck
//
//  Created by Aldo Antonio Martinez Avalos on 3/20/18.
//  Copyright © 2018 Aldo Antonio Martinez Avalos. All rights reserved.
//

import Foundation

class LinkedList<T> {
    
    typealias Node = LinkedListNode<T>
    
    private var head: Node?
    
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
        return node
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
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
            head = newNode
        } else {
            let prev = self.node(atIndex: index-1)
            newNode.next = prev?.next
            prev?.next = newNode
        }
    }
    
    func removeAll() {
        head = nil
    }

    public func remove(at index: Int) -> T? {
        guard !isEmpty, index >= 0 else {
            return nil
        }
        if index == 0 {
            let value = head?.value
            head = nil
            return value
        }
        let prev = self.node(atIndex: index - 1)
        let node = self.node(atIndex: index)
        prev?.next = node?.next
        return node?.value
    }
    
}

extension LinkedList: CustomStringConvertible {
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

extension LinkedList {
    
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
    
}
