import Foundation

// Complete the countTriplets function below.
func countTriplets(arr: [Int], r: Int) -> Int {

    var possibilities = [Int:Int]()
    var combos = [Int:Int]()
    var triplets = 0
    for i in 0..<arr.count{
        
        print(arr[i])
        
        if(combos[arr[i]] != nil){
            triplets += combos[arr[i]] ?? 0
        }
        if(possibilities[arr[i]] != nil){     
            combos[arr[i]*r] = (combos[arr[i]*r] ?? 0) + (possibilities[arr[i]] ?? 0)
        }
        possibilities[arr[i]*r] = (possibilities[arr[i]*r] ?? 0) + 1  
    }
    return triplets
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let nr = nrTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nr[0])
else { fatalError("Bad input") }

guard let r = Int(nr[1])
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let ans = countTriplets(arr: arr, r: r)

fileHandle.write(String(ans).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
