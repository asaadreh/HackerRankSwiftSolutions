import Foundation

// Complete the minimumSwaps function below.
func minimumSwaps(arr: inout [Int]) -> Int {

   var swaps = 0
   var i = 0
   while(i<arr.count-2){
       if(arr[i] != i+1){
           arr.swapAt(arr[i]-1, i)
           swaps += 1
           continue
       }
       i += 1
   }
    return swaps
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

let res = minimumSwaps(arr: &arr)

fileHandle.write(String(res).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
