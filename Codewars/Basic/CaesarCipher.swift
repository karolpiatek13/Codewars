//
//  CaesarCipher.swift
//  Codewars
//
//  Created by Karol on 13.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/first-variation-on-caesar-cipher/
class CaesarCipher {
    
    let AAscii = 65
    let ZAscii = 90
    let aAscii = 97
    let zAscii = 122
    let bigLettersRange = 65 ... 90
    let smallLettersRange = 97 ... 122
    let numberOfLetters = 26
    let numberOfArrayElements = 5

    func movingShift(_ s: String, _ shift: Int) -> [String] {
        let encoded = encode(text: s, shift: shift, operation: +)
        
        var result = split(encoded, Int(ceil(Double(encoded.characters.count) / Double(numberOfArrayElements))))
        while result.count < numberOfArrayElements {
            result.append("")
        }
        return result
    }

    func split(_ str: String, _ count: Int) -> [String] {
        return stride(from: 0, to: str.characters.count, by: count).map { i -> String in
            let startIndex = str.index(str.startIndex, offsetBy: i)
            let endIndex   = str.index(startIndex, offsetBy: count, limitedBy: str.endIndex) ?? str.endIndex
            return String(str[startIndex..<endIndex])
        }
    }

    func demovingShift(_ arr: [String], _ shift: Int) -> String {
        let text = arr.reduce("",+)
        
        return encode(text: text, shift: shift, operation: -)
    }

    func encode(text: String, shift: Int, operation: ((Int, Int) -> Int)) -> String {
        var shift = shift
        return text.asciiArray.map({ (asciiValue) -> String in
            var result = asciiValue
            
            var value = 0
            if bigLettersRange ~= result {
                value = AAscii
            } else if smallLettersRange ~= result {
                value = aAscii
            } else {
                shift += 1
                return String(UnicodeScalar(UInt8(result)))
            }
            
            result = operation(asciiValue,shift) - value
            result = result % numberOfLetters
            if result < 0 {
                result += numberOfLetters
            }
            result += value
            
            shift += 1
            return String(UnicodeScalar(UInt8(result)))
        }).reduce("",+)
    }
}

extension String {
    var asciiArray: [Int] {
        return unicodeScalars.filter{$0.isASCII}.map{Int($0.value)}
    }
}
