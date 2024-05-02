import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var res: [Int] = []
    for idx in 0..<numbers.count-1{
        for idx2 in idx+1..<numbers.count{
            if !res.contains(numbers[idx] + numbers[idx2]){
                res.append(numbers[idx] + numbers[idx2])
            }
        }
    }
    res.sort(by: <)
    return res
}
