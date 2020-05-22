import Foundation

// Complete the minimumAbsoluteDifference function below.
func minimumAbsoluteDifference(arr: inout [Int]) -> Int {
arr.sort()
var minDiff = abs(arr[0] - arr[1])

for i in 0...arr.count-2{
    if abs(arr[i]-arr[i+1])<minDiff{
        minDiff = abs(arr[i]-arr[i+1])
    }
}
return minDiff
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
var arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let result = minimumAbsoluteDifference(arr: &arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
