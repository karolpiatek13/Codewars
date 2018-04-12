//
//  ReverseOrRotate.swift
//  Codewars2
//
//  Created by Karol on 12.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/reverse-or-rotate

func revRot(_ s: String, _ c: Int) -> String {
    if c <= 0 || c > s.characters.count { return "" }
    let array = s.characters.map({ Int(String($0)) })
    var result = ""
    for var i in 0...s.characters.count / c - 1 {
        var subArray = array[i*c...i*c+c - 1].flatMap({$0})
        let r = subArray.reduce(0, { (res, value) -> Double in
            return res + pow(Double(value), 3.0)
        })
        if r.remainder(dividingBy: 2) == 0 {
            subArray = subArray.reversed()
        } else {
            subArray.append(subArray.first!)
            subArray.removeFirst()
        }
        result += subArray.reduce("", { (res, value) -> String in
            return res + String(value)
        })
    }
    
    return result
}
