import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var input: [[Int]] = sizes
    var width: [Int] = []
    var length: [Int] = []
    for var size in input {
        if size[0] < size[1] {
            let temp = size[0]
            size[0] = size[1]
            size[1] = temp
        }
        width.append(size[0])
        length.append(size[1])
    }
    return width.max()! * length.max()!
}