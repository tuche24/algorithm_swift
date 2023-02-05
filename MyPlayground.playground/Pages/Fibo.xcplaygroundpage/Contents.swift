import UIKit


//:# 피보나치 수열

/*
    입력예제 10
    출력예제 1 1 3 5 8 13 21 34 55
*/

var fibo: [Int] = [Int]()

func DFS(_ n: Int) -> Int {
    if n == 1 {
        fibo[1] = 1
        return fibo[1]
    } else if n == 2 {
        fibo[2] = 1
        return fibo[2]
    } else {
        fibo[n] = DFS(n-2) + DFS(n-1)
        return fibo[n]
    }
}

func solve(variable: Int) {
    fibo = []
    for _ in 0...variable {
        fibo.append(0)
    }
    DFS(variable)
    for i in 1...10 {
        print(fibo[i], terminator: " ")
    }
}

solve(variable: 10)

































