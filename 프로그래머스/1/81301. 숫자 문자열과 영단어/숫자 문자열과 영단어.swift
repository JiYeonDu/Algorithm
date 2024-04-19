import Foundation

func solution(_ s:String) -> Int {
    let dic = ["one": 1, "two": 2, "three": 3, "four": 4,
                              "five": 5, "six": 6, "seven": 7, "eight": 8,
                              "nine": 9, "zero": 0]
    var result: [Int] = []
    var flag: String = ""
    for char in s {
        if let temp = Int(String(char)) {
            result.append(temp)
        } else {
            flag.append(char)
            if dic.keys.contains(flag) {
                result.append(dic[flag]!)
                flag = ""
            }
        }
    }
    let res = result.map { String($0) }.joined()
    return Int(res)!
}