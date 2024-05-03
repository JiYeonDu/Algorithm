import Foundation

func solution(_ s:String) -> [Int] {
    var res: [Int] = []
    var idx = 0
    for char in s {
        var count = 1
        var flag = 0
        for str in s.prefix(idx).reversed(){
            if str == char{
                res.append(count)
                flag = 1
                break
            }
            count += 1
        }
        if flag == 0 {
            res.append(-1)
        }
        idx += 1
    }

    return res
}