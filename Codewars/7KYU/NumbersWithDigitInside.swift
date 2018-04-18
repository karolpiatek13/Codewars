//
//  NumbersWithDigitInside.swift
//  Codewars
//
//  Created by Karol on 18.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/57ad85bb7cb1f3ae7c000039
func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
    let result = (1...x).filter({ String($0).contains(String(d)) }).reduce([0,0,1]) { (result, value) -> [Int64] in
        return [result[0] + 1, result[1] + value, result[2] * value]
    }
    return result == [0,0,1] ? [0,0,0] : result
}
