//: [Previous](@previous)

import UIKit

let _ = solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    guard (1...100).contains(array.count) else { return [] }
    guard (1...50).contains(commands.count) else { return [] }
    var result = [Int]()
    commands.enumerated().forEach {
        guard $0.element.count == 3 else { return }
        let elements = array[$0.element[0] - 1...$0.element[1] - 1].sorted()
        let element = elements[$0.element[2] - 1]
        result.append(element)
    }
    
    return result
}


//: [Next](@next)
