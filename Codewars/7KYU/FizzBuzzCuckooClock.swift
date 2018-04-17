//
//  FizzBuzzCuckooClock.swift
//  Codewars
//
//  Created by System Administrator on 4/17/18.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/58485a43d750d23bad0000e6/
func fizzBuzzCuckooClock(_ time: String) -> String {
    let minutes = Int(time.split(separator: ":")[1]) ?? 0
    if minutes == 0 {
        var hours = Int(time.split(separator: ":")[0]) ?? 0
        hours = hours % 12
        if hours == 0 { hours = 12 }
        return String(String(repeating: "Cuckoo ", count: hours).dropLast())
    }
    if minutes % 30 == 0 { return "Cuckoo" }
    if minutes % 15 == 0 { return "Fizz Buzz" }
    if minutes % 5 == 0 { return "Buzz" }
    if minutes % 3 == 0 { return "Fizz" }
    return "tick"
}
