//
//  MovesInSquaredStrings.swift
//  Codewars
//
//  Created by Karol on 19.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/56dbe0e313c2f63be4000b25/
func vertMirror(_ s: String) -> String {
    let result = s.split(separator: "\n").map({ String($0.characters.reversed()) }).joined(separator: "\n")
    return result
}

func horMirror(_ s: String) -> String {
    let result = s.split(separator: "\n").reversed().joined(separator: "\n")
    return result
}

func oper(_ operation: ((String) -> String), _ s: String) -> String {
    return operation(s)
}
