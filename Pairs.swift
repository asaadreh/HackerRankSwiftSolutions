import Foundation

// Complete the pairs function below.
func pairs(k: Int, arr: [Int]) -> Int {

var s_arr = arr.sorted()
var count = 0
for i in 0...s_arr.count-1{
    
    var j = i
    while(j<s_arr.count && s_arr[j] - s_arr[i] <= k){
        if(s_arr[j] - s_arr[i] == k){
            count += 1
        }
        j += 1
    }
}

return count

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nkTemp = readLine() else { fatalError("Bad input") }
let nk = nkTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let result = pairs(k: k, arr: arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
