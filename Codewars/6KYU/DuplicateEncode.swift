//
//  DuplicateEncode.swift
//  Codewars
//
//  Created by Karol Piatek on 05/10/2019.
//  Copyright © 2019 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/54b42f9314d9229fd6000d9c

func duplicateEncode(_ word: String) -> String {
    
    let lowerCasedWord = word.lowercased()
    var occurenceDict: [Character: String] = [:]
    
    lowerCasedWord.forEach { char in
        occurenceDict[char] = occurenceDict[char] == nil ? "(" : ")"
    }
    
    return lowerCasedWord.reduce("") { (result, char) -> String in
        return result + occurenceDict[char]!
    }
}
