import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for command in commands {
        let i = command[0] - 1
        let j = command[1]
        let k = command[2] - 1
        var newCommand = Array(array[i..<j])
        newCommand = newCommand.sorted(by: <)
        result.append(newCommand[k])
    }
    return result
}
