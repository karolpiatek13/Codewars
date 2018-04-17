//
//  BinaryCalculator.swift
//  Codewars
//
//  Created by System Administrator on 4/17/18.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/546ba103f0cf8f7982000df4/
enum Operator {
    case ADD, SUBTRACT, MULTIPLY
}

func calculate(_ a:String, _ b:String, _ op:Operator) -> String {
    switch op {
    case .ADD:
        return binaryOperation(a: a, b: b, operation: +)
    case .SUBTRACT:
        return binaryOperation(a: a, b: b, operation: -)
    case .MULTIPLY:
        return binaryOperation(a: a, b: b, operation: *)
    }
}

func binaryOperation(a:String, b:String, operation: ((Int, Int) -> Int)) -> String {
    return String(operation(a.toBinaryInt(), b.toBinaryInt()), radix: 2)
}

extension String {
    
    func toBinaryInt() -> Int {
        return Int(self, radix: 2) ?? 0
    }
}
