//
//  LinkedList.swift
//  Codewars2
//
//  Created by Karol on 12.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

class LinkedList {
    
    var head: Node?
    
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
}
