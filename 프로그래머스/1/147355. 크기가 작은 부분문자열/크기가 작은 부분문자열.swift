import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var leng = p.count
    var str = t
    var result = 0
    for i in 0...t.count-leng{
        //print(Int(str.suffix(leng))!)
        if Int(str.suffix(leng))! <= Int(p)! {
            result += 1
        }
        str.popLast()
    }
    
    return result
}