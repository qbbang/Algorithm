//: [Previous](@previous)

import Foundation

solution([3, 0, 6, 1, 5])
//solution([10, 8, 6, 4, 3])
//solution([6, 5, 2, 0, 1])
//solution([0, 0, 0, 0, 0])
//solution([100, 100, 100, 100, 100])
//solution([10, 8, 5, 4, 3])
//solution([10, 8, 5, 3, 3])

func solution(_ citations:[Int]) -> Int {
    guard (0...1000).contains(citations.count) else { return 0 }
    
    //
    for (idx, value) in citations.sorted(by: >).enumerated() {
        if idx >= value {
            print("idx: \(idx), \(value)")
//            return idx
        }
        print("Nope idx: \(idx), \(value)")
    }
    
    return citations.count
}

//: [Next](@next)
