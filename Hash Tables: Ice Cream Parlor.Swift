import Foundation

// Complete the whatFlavors function below.
func whatFlavors(cost: [Int], money: Int) -> Void {

//declaring answer array because answer has to be sorted in the end
var ans1 = [Int]()

// a dictionary which will store cost of icecream and also append indices of duplicate values
var flavours = [Int:[Int]]()

for i in 0...cost.count-1{
    if(flavours[cost[i]] == nil){
        flavours[cost[i]] = [i]
    }
    else{
        flavours[cost[i]]?.append(i)
    }
}

//traversing dictionary for key
for key in flavours{
    
    if(flavours[money - key.key] != nil){
        if((money - key.key) == key.key){

            if(flavours[money-key.key]!.count>1){
                ans1 = (flavours[money-key.key]!)
                break
            }
        }
        else{
            ans1.append(flavours[money-key.key]!.first!)
            ans1.append(key.value.first!)
            break
        }
    }
    
}
ans1[0] += 1
ans1[1] += 1
ans1.sort()
print(ans1[0], ans1[1])

}

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let money = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    guard let costTemp = readLine() else { fatalError("Bad input") }
    let cost: [Int] = costTemp.split(separator: " ").map {
        if let costItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return costItem
        } else { fatalError("Bad input") }
    }

    guard cost.count == n else { fatalError("Bad input") }

    whatFlavors(cost: cost, money: money)
}
