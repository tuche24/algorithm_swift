//: [Previous](@previous)

//:# 경로 탐색(인접행렬)

import Foundation

var graph = [[Int]](repeating: [Int](repeating: 0, count: 21), count: 21)

var ch = [Int](repeating: 0, count: 21)

var answer = 0

func DFS(_ v: Int, _ n: Int) {
    if v == n {
        answer += 1
    } else {
        for i in 1...n {
            if graph[v][i] == 1 && ch[i] == 0 {
                ch[i] = 1
                DFS(i, n)
                ch[i] = 0
            }
        }
    }
}

func result(m: Int, n: Int) {
    print(DFS(1, n))
}


//: [Next](@next)
