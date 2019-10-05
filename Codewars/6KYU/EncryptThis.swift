//
//  EncryptThis.swift
//  Codewars
//
//  Created by Karol Piatek on 05/10/2019.
//  Copyright © 2019 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/5848565e273af816fb000449

func encryptThis(text: String) -> String {
    
    let wordsArray: [String.SubSequence] = text.split(separator: " ")
    
    let res = wordsArray.reduce("") { (result, next) -> String in
        
        let wordWithoutFirstLetter = next.dropFirst()
        
        let secondCharacter: String = wordWithoutFirstLetter.first?.string ?? ""
        let lastCharacter: String = wordWithoutFirstLetter.dropFirst().last?.string ?? ""
        
        let middlePart = wordWithoutFirstLetter.dropFirst().dropLast()
        
        let firstCharacter: String = next.first!.stringAsciiValue
        return result + " " + firstCharacter + lastCharacter + middlePart + secondCharacter
    }
    
    return String(res.dropFirst())
}

private extension Character {
    
    var stringAsciiValue: String {
        return String(self.asciiValue!)
    }
    
    var string: String {
        return String(self)
    }
}
