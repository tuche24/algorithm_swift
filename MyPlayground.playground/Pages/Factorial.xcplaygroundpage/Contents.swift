//: [Previous](@previous)

import Foundation

//:# 팩토리얼
//:### 자연수 N이 입력되면 N!를 구하는 프로그램을 작성하세요
/*
    입력예제 5
    출력예제 120
*/

func DFS(_ n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n*DFS(n-1)
    }
}

print(DFS(5))

//: [Next](@next)
