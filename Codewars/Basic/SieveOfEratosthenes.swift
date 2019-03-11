//
//  SieveOfEratosthenes.swift
//  Codewars
//
//  Created by Karol on 11/03/2019.
//  Copyright © 2019 KarolPiatek. All rights reserved.
//

import Foundation

func sieveOfEratosthenes(max: Int) -> Set<Int> {
    
    var array = Set(2...max)
    for value in array where Double(value) <= Double(max).squareRoot() {
        let notPrimaryNumbers = stride(from: value * value, to: max + 1, by: value)
        array.subtract(notPrimaryNumbers)
    }
    
    return array
}
