//: [Previous](@previous)

import Foundation

//:# 이진수 출력(재귀)
//:### 10진수 N이 입력되면 2진수로 변환하여 출력하는 프로그램을 작성

/*
    입력에제 11
    출력예제 1011
*/

func DFS(_ n: Int) {
    if n == 0 {
        return
    } else {
        DFS(n/2)
        print("\(n%2)", terminator: "")
    }
}

DFS(11)

//: [Next](@next)
