func solution(_ strings:[String], _ n:Int) -> [String] {
    let sortedString = strings.sorted { first, second  in
        let firstWord = first.index(first.startIndex, offsetBy: n)
        let secondWord = second.index(second.startIndex, offsetBy: n)
        if first[firstWord] == second[secondWord] {
            return first < second
        } else {
            return first[firstWord] < second[secondWord]
        }
    }
    
    return sortedString
}