import Foundation

// Complete the isValid function below.
func isValid(s: String) -> String {

var dict = [Character:Int]()
var frequency = [Int:Int]()
var count = 0

for c in s{
    dict[c] = (dict[c] ?? 0) + 1
}
for value in dict.values{
    frequency[value] = (frequency[value] ?? 0) + 1
}
let max = frequency.filter {$0.value == frequency.values.max()!}
var maxkey = max.keys.first!

if(frequency[1] ?? 2 > 1 || frequency.count > 2){
    for val in dict.values{
        count = count + abs(maxkey - val)
        if(count > 1){
            return "NO"
        }
    }
}
return "YES"

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = isValid(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
