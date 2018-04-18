//
//  PartialWordSearching.swift
//  Codewars
//
//  Created by Karol on 18.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/partial-word-searching/
func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let result = arr.filter({ $0.lowercased().contains(str) })
    return result.isEmpty ? ["Empty"] : result
}
