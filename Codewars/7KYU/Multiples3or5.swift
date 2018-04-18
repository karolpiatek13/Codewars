//
//  Multiples3or5.swift
//  Codewars
//
//  Created by Karol on 18.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/sum-of-all-the-multiples-of-3-or-5/
func findSum(_ n: Int) -> Int {
    return (0...n).filter({ $0 % 3 == 0 || $0 % 5 == 0 }).reduce(0, +)
}
