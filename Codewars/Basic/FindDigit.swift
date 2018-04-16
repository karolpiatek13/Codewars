//
//  findDigit.swift
//  Codewars
//
//  Created by System Administrator on 4/16/18.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/find-the-nth-digit-of-a-number/train/swift

func findDigit(_ num:Int, _ nth: Int) -> Int {
    if nth < 1 { return -1 }
    let array = Array(String(num).flatMap{Int(String($0))}.reversed())
    return array.count >= nth ? array[nth - 1] : 0
}
