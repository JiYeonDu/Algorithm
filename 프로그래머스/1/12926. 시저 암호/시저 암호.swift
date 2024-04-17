func solution(_ s:String, _ n:Int) -> String {
    var charToAscii: [UInt8] = []
    var asciiToChar = ""
    for char in s {
        if 65 <= char.asciiValue! && char.asciiValue! <= 90 {
            if char.asciiValue! + UInt8(n) > 90 {
                charToAscii.append(char.asciiValue! + UInt8(n) - 26)
            } else {
                charToAscii.append(char.asciiValue! + UInt8(n))
            }
        } else if char == " " {
            charToAscii.append(char.asciiValue!)
        } else{
            if char.asciiValue! + UInt8(n) > 122 {
                charToAscii.append(char.asciiValue! + UInt8(n) - 26)
            } else {
                charToAscii.append(char.asciiValue! + UInt8(n))
            }
        }
    }
    for asc in charToAscii {
        asciiToChar.append(String(UnicodeScalar(asc)))
    }
    return asciiToChar
}