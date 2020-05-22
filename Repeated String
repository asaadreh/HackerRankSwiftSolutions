import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {

var count = 0

if(n>=s.count){
    var leftover = n%(n/s.count)
    var iterator = 0
    var extra = 0
    for c in s{
        iterator += 1
        if(c == "a"){
            count += 1
            if(iterator <= leftover){
                extra += 1
            }
        }
    }

    count = count*(n/s.count) + extra
}
else{
    for c in s[s.startIndex..<s.index(s.startIndex, offsetBy: n)]{
    if(c == "a"){
        count += 1
    }
}
}

return count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = repeatedString(s: s, n: n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

