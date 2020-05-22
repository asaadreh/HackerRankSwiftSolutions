import Foundation

// Complete the luckBalance function below.
func luckBalance(k: Int, contests: [[Int]]) -> Int {

print(contests)

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

let contests: [[Int]] = AnyIterator{ readLine() }.prefix(n).map {
    let contestsRow: [Int] = $0.split(separator: " ").map {
        if let contestsItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return contestsItem
        } else { fatalError("Bad input") }
    }

    guard contestsRow.count == 2 else { fatalError("Bad input") }

    return contestsRow
}

guard contests.count == n else { fatalError("Bad input") }

let result = luckBalance(k: k, contests: contests)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
