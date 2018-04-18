//
//  Eucli.swift
//  Codewars
//
//  Created by System Administrator on 4/16/18.
//  Copyright © 2018 KarolPiatek. All rights reserved.
//

import Foundation

// https://www.codewars.com/kata/euclidean-distance-in-n-dimensions/
func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
    let result = zip(point1, point2).map({ pow($0.0 - $0.1, 2.0) }).reduce(0.0,+)
    return Double( round(100*sqrt(result)) / 100 )
}
