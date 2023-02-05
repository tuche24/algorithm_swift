//: [Previous](@previous)

//:# 부분집합 구하기(DFS)
//:### 자연수 N이 주어지면 1부터 N까지의 원소를 갖는 집합의 부분집합을 모두 출력하는 프로그램을 작성하세요.

import Foundation

var n: Int = 0
var checkArray: [Int] = []

func DFS(l: Int) {
    if l == n+1 {
        var tmp = ""
        for i in 1...n {
            if checkArray[i] == 1 {
                tmp += "\(i) "
            }
        }
        if tmp.count > 0 {
            print(tmp)
        }
    } else {
        checkArray[l] = 1
        DFS(l: l+1)
        checkArray[l] = 0
        DFS(l: l+1)
    }
}

func solve(variable: Int) {
    n = variable
    checkArray = []
    for i in 0...n {
        checkArray.append(0)
    }
    DFS(l: 1)
}

solve(variable: 3)

//: [Next](@next)
