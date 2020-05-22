import Foundation

// Complete the alternatingCharacters function below.
func alternatingCharacters(s: String) -> Int {

    var s = Array(s)

var count = 0

for i in 0...s.count-2{
    if(s[i] == "A"){
        if(s[i+1] == "A"){
            count += 1
        }
    }
    if(s[i] == "B"){
        if(s[i+1] ==  "B"){
            count += 1
        }
    }
}
return count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }

    let result = alternatingCharacters(s: s)

    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
