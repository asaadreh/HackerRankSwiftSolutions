import Foundation

// Complete the freqQuery function below.
func freqQuery(queries: [[Int]]) -> [Int] {

var DS = [Int:Int]()
var result = [Int]()

for i in 0...queries.count-1{
    
    
    if(queries[i][0] == 1){
        DS[queries[i][1]] = (DS[queries[i][1]] ?? 0) + 1
    }
    else if(queries[i][0] == 2){
        if(DS[queries[i][1]] != nil && DS[queries[i][1]]! > 0){
            DS[queries[i][1]] = (DS[queries[i][1]] ?? 0) - 1
        }
    }
    else if(queries[i][0] == 3){
        if(DS.values.contains(queries[i][1])){
            result.append(1)
        }
        else{
            result.append(0)
        }
    }
    
}

return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var queries = [[Int]]()
while let raw = readLine() {
    guard raw.count >= 3, raw[raw.index(raw.startIndex, offsetBy: 1)] == " " else { fatalError("Bad input") }
    guard let op = Int("\(raw[raw.startIndex])"),
        let val = Int("\(raw[raw.index(raw.startIndex, offsetBy: 2)..<raw.endIndex])")
    else {
        fatalError("Bad input")
    }
    queries.append([op, val])
}

guard queries.count == q else { fatalError("Bad input") }

let ans = freqQuery(queries: queries)

fileHandle.write(ans.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
