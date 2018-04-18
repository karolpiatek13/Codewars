//
//  ReplaceAllItems.swift
//  Codewars
//
//  Created by Karol on 18.04.2018.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/57ae18c6e298a7a6d5000c7a/
func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    return array.map({ return $0 == old ? new : $0 })
}
