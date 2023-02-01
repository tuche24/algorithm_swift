//: [Previous](@previous)

import Foundation

//:# 재귀함수
//:### 자연수 N이 입력되면 재귀함수를 이용하여 1부터 N까지를 출력하는 프로그램을 작성하세요.

/*
    입력예제
    3
    출력예제
    1 2 3
*/

private func DFS(_ n: Int) {
    if n == 0 {
        return
    } else {
        DFS(n-1)
        print("\(n)", terminator: " ")
    }
}

DFS(3)
//: [Next](@next)
