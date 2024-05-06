import Foundation

func solution(_ food:[Int]) -> String {
    var result: String = ""
    var index = 0
    for dish in food {
        var count = dish / 2
        if dish % 2 != 0 {
            count = (dish - 1) / 2
        }
        print(count)
        for _ in 0..<count {
            result.append(String(index))
        }
        index += 1
    }
    return result + "0" + result.reversed()
}