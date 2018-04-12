import Foundation

// https://www.codewars.com/kata/functional-addition

func add(_ n: Int) -> ((Int) -> Int) {
    return { n + $0 }
}

func add2(_ n: Int) -> ((Int) -> Int) {
    func inAdd(_ x: Int) -> Int {
        return n + x
    }
    return inAdd
}
