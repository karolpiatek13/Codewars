//
//  LinkedList.swift
//  Codewars2
//
//  Created by Karol on 12.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

class LinkedList {
    
    // http://www.codewars.com/kata/linked-lists-push-and-buildonetwothree/
    
    func push(_ head:Node?, _ data:Int) -> Node {
        guard let next = head else {
            return Node(data)
        }
        
        let node = Node(data)
        node.next = next
        return node
    }
    
    func buildOneTwoThree() -> Node {
        var linkedList: Node? = nil
        linkedList = push(linkedList, 3)
        linkedList = push(linkedList, 2)
        return push(linkedList, 1)
    }
    
    // https://www.codewars.com/kata/linked-lists-length-and-count/
    
    // the number of nodes in a linked list.
    func length(_ head: Node?) -> Int {
        guard let head = head else { return 0 }
        return 1 + length(head.next)
    }
    
    //the occurrences of an integer in a linked list.
    func count(_ head: Node?, _ data: Int) -> Int {
        guard let head = head else { return 0 }
        return (head.data == data ? 1 : 0) + count(head.next, data)
    }
    
    // http://www.codewars.com/kata/linked-lists-get-nth-node/
    func getNth(_ head: Node?, _ index: Int) throws -> Node? {
        guard let node = head else { throw NSError(domain: "Error", code: 1) }
        return index == 0 ? node : try getNth(node.next,index - 1)
    }
    
    // http://www.codewars.com/kata/linked-lists-insert-nth-node/
    func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
        guard index != 0 else {
            let newHead = Node(data)
            newHead.next = head
            return newHead
        }
        
        guard let node = try getNth(head, index - 1) else { return nil  }
        let newNode = Node(data)
        let next = node.next
        node.next = newNode
        newNode.next = next
        
        return head
    }
    
    // https://www.codewars.com/kata/linked-lists-append/
    func append(_ listA:Node?, _ listB:Node?) -> Node? {
        guard let listA = listA else { return listB }
        let last = getLast(listA)
        last.next = listB
        return listA
    }
    
    func getLast(_ node: Node) -> Node {
        guard let next = node.next else { return node }
        return getLast(next)
    }
}
