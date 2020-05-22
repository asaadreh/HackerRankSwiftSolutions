import Foundation

// Complete the maximumToys function below.
func maximumToys(prices: inout [Int], k: Int) -> Int {

var toysPrice = 0
var toysNum = 0
var maxToy = 0

prices.sort(by: <)
for i in 0...prices.count-1{
    if (prices[i] + toysPrice > k){      
        return i
    }
    else{
        toysPrice += prices[i]
    } 
}
return 0
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

guard let pricesTemp = readLine() else { fatalError("Bad input") }
var prices: [Int] = pricesTemp.split(separator: " ").map {
    if let pricesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return pricesItem
    } else { fatalError("Bad input") }
}

guard prices.count == n else { fatalError("Bad input") }

let result = maximumToys(prices: &prices, k: k)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
