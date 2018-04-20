//
//  Correct.swift
//  Codewars
//
//  Created by Karol on 20.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/57873ab5e55533a2890000c7/
func correct(_ timeString: String?) -> String? {
    guard timeString != "" else { return "" }
    guard let array = timeString?.split(separator: ":").map({ Int($0) }).flatMap({ $0 }) else { return nil }
    guard array.count == 3 else { return nil }
    
    let secondsOverflow = array[2] / 60
    let seconds = String(format: "%02d", array[2] % 60)
    let minutesOverflow = (array[1] + secondsOverflow) / 60
    let minutes = String(format: "%02d", (array[1] + secondsOverflow) % 60)
    let hours = String(format: "%02d", (array[0] + minutesOverflow) % 24)
    
    return "\(hours):\(minutes):\(seconds)"
}
