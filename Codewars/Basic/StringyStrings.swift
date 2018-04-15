//
//  StringyStrings.swift
//  Codewars
//
//  Created by System Administrator on 4/15/18.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

func stringy(_ size: Int) -> String {
    var result = ""
    var i = 1
    while size >= i {
        result += i % 2 == 0 ? "0" : "1"
        i += 1
    }
    return result
}
