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

func smallestPrimeFactor(for number: Int, primaryNumbers: [Int]) -> Int? {
    
    return primaryNumbers.first(where: { primaryNumber in
        let dividedNumber = Double(number) / Double(primaryNumber)
        return ceil(dividedNumber) == dividedNumber
    })
}

func representNumberWithPrimeNumbersMultiplication(number: Int) -> [Int] {
    
    let primaryNumbers = Array(sieveOfEratosthenes(max: number)).sorted()
    
    var primeNumbers: [Int] = []
    var number = number
    while number != 1 {
        guard let SPF = smallestPrimeFactor(for: number, primaryNumbers: primaryNumbers) else { continue }
        number = number / SPF
        primeNumbers.append(SPF)
    }
    
    return primeNumbers
}
