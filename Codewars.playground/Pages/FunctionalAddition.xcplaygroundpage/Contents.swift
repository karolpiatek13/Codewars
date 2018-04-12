import Foundation

// https://www.codewars.com/kata/functional-addition

func add(_ n: Int) -> ((Int) -> Int) {
    return { n + $0 }
}
