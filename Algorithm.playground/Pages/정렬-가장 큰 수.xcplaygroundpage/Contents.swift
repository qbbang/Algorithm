//: [Previous](@previous)

import Foundation

solution([0, 0, 0, 0, 0, 0000])

func solution(_ numbers:[Int]) -> String {
    // 제한사항1. numbers의 길이는 1 이상 100,000 이하입니다
    guard (1...100_000).contains(numbers.count) else { return "" }
    // 제한사항1. numbers의 원소는 0 이상 1,000 이하입니다
    
    // MARK: 앞자리가 큰수가 앞으로 정렬됨,,,
    let result = numbers.sorted { "\($0)\($1)" > "\($1)\($0)" }
        .reduce("") {
        $0 + String($1)
    }
    
    return (Int(result) == 0) ? "0" : String(result)

}

//: [Next](@next)
