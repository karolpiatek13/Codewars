//
//  main.swift
//  Codewars2
//
//  Created by Karol on 12.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

let list = LinkedList()
list.head = list.buildOneTwoThree()
print(list.length(list.head))
print(list.count(list.head, 1))
