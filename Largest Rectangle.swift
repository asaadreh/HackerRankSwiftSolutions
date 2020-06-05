import Foundation

// Complete the largestRectangle function below.
func largestRectangle(h: [Int]) -> Int {

var positionStack : [Int] = [0]
var heightStack : [Int] = [h[0]]
var max = 0

for i in 0..<h.count-1{
    
    let current = h[i]
    let next = h[i+1]
    
    if(next>current){
        positionStack.append(i+1)
        heightStack.append(next)
    }
    
    if(next<current){

        let rectArea = heightStack.popLast()!*(i+1-positionStack.last!)
        if(rectArea > max){
            max = rectArea
        }
        
        while(heightStack.last ?? 0 > next){
            positionStack.popLast()
            let rectArea = heightStack.popLast()!*(i+1-positionStack.last!)
            if(rectArea > max){
                max = rectArea
            }
        }
        heightStack.append(next)
    }
}


var lastIndex = h.count
while(heightStack.count != 0){
    let rectArea = heightStack.popLast()!*(lastIndex-positionStack.popLast()!)
    if(rectArea > max){
        max = rectArea
    }
}

return max
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let hTemp = readLine() else { fatalError("Bad input") }
let h: [Int] = hTemp.split(separator: " ").map {
    if let hItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return hItem
    } else { fatalError("Bad input") }
}

guard h.count == n else { fatalError("Bad input") }

let result = largestRectangle(h: h)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
