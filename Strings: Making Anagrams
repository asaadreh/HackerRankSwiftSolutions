import Foundation

// Complete the makeAnagram function below.
func makeAnagram(a: String, b: String) -> Int {

var dict_a = [Character:Int]()
var dict_b = [Character:Int]()
var count = 0

for c in a{
    dict_a[c] = (dict_a[c] ?? 0) + 1
}
for c in b{
    dict_b[c] = (dict_b[c] ?? 0) + 1
}

let set = Array(Set(Array(dict_a.keys) + Array(dict_b.keys)))

for c in set{
    count += abs((dict_a[c] ?? 0) - (dict_b[c] ?? 0))
}
return count

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let a = readLine() else { fatalError("Bad input") }

guard let b = readLine() else { fatalError("Bad input") }

let res = makeAnagram(a: a, b: b)

fileHandle.write(String(res).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
