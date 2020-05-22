import Foundation

func advFib(f : Int) -> Int{
    
    var num1 = 0
    var num2 = 1
    var num3 = 1
    var total = 0
    
    if(f < 1){
        return 1
    }
    
    for _ in 0...f{
        
        total = num1 + num2 + num3
        num1 = num2
        num2 = num3
        num3 = total

    }
    
    return total
}


// Complete the stepPerms function below.
func stepPerms(n: Int) -> Int {

return advFib(f: n-2)

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for sItr in 1...s {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    let res = stepPerms(n: n)

    fileHandle.write(String(res).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
