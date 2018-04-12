//: Playground - noun: a place where people can play

import Foundation

//https://www.codewars.com/kata/write-number-in-expanded-form/train/swift

func expandedForm(_ num: Int) -> String {
    let array = String(num).characters.flatMap{ Int(String($0)) }
    var count = array.count
    let result = array.map({ (number) -> String in
        count -= 1
        return String(number * Int(pow(10.0,Double(count))))
    }).filter({ $0 != "0" }).joined(separator: " + ")
    return result
}
