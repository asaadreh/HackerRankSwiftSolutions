import Foundation

func fibonacci (count : inout Int, first : Int, second : Int ,n: Int) -> Int {
    if(count>=n)
    {
        return(second)
    }
    
    count += 1
    return fibonacci(count: &count, first: second, second: first + second, n : n)
    
}

// read the integer n
let n = Int(readLine()!)!
var count = 1
// print the nth fibonacci number
print(fibonacci(count: &count, first: 0, second : 1,n: n))
