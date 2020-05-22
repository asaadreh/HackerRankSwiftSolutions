import Foundation

// Complete the isBalanced function below.
func isBalanced(s: String) -> String {

var stack = [Character]()
var r = Array(s)

for i in 0...r.count-1{
    if (r[i] == "("){
        stack.append("n")
    }
    if(r[i] == ")"){
        if(!stack.isEmpty && stack[stack.count-1] == "n"){
            stack.popLast()
        }
        else{
            return "NO"
        }
    }
    if (r[i] == "{"){
        stack.append("c")
    }
    if(r[i] == "}"){
        if(!stack.isEmpty && stack[stack.count-1] == "c"){
            stack.popLast()
        }
        else{
            return "NO"
        }
    }
    if (r[i] == "["){
        stack.append("s")
    }
    if(r[i] == "]"){
        if(!stack.isEmpty && stack[stack.count-1] == "s"){
            stack.popLast()
        }
        else{
            return "NO"
        }
    }
}
if(!stack.isEmpty){
    return "NO"
    }
    return "YES"
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let s = readLine() else { fatalError("Bad input") }

    let result = isBalanced(s: s)

    fileHandle.write(result.data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
