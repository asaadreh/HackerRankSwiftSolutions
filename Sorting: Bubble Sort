import Foundation

// Complete the countSwaps function below.
func countSwaps(a: inout [Int]) -> Void {
    
    var numSwaps = 0

    for _ in 0...a.count-1{
        for j in 0...a.count-2{
            if(a[j]>a[j+1]){
                a.swapAt(j,j+1)
                numSwaps += 1
            }
        }
    }

    print("Array is sorted in",numSwaps,"swaps.")
    print("First Element:", a[0])
    print("Last Element:", a[a.count-1])

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine() else { fatalError("Bad input") }
var a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

countSwaps(a: &a)
