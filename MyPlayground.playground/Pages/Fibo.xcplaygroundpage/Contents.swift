import UIKit


//:# 피보나치 수열

/*
    입력예제 10
    출력예제 1 1 3 5 8 13 21 34 55
*/

var fibo: [Int] = [Int]()

func DFS(_ n: Int) -> Int {
    if n == 1 {
        fibo.insert(1, at: 1)
        return 1
    } else if n == 2 {
        fibo.insert(1, at: 2)
        return 1
    } else {
        fibo.insert(DFS(n-2) + DFS(n-1), at: n)
        return DFS(n-2) + DFS(n-1)
    }
}

DFS(10)

for i in 1...10 {
    print(fibo[i], terminator: " ")
}
































