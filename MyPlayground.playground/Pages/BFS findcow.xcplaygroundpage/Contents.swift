//: [Previous](@previous)

//:# 이진트리 레벨탐색(BFS: Breath-First Search)
//:### 현수는 스카이 콩콩으로 앞으로 1, 뒤로 1, 앞으로 5를 이동할 수 있다. 몇 번의 점프로 송아지의 위치까지 갈 수 있는가?

// 현수 위치 : 5, 송아지 위치 : 14, 출력 : 3

import Foundation

struct Queue<T> {
    private var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}

var answer = 0
let dis: [Int] = [1, -1, 5]
var ch: [Int] = []
var Q = Queue<Int>()
func BFS(s: Int, e: Int) -> Int {
    ch[s] = 1
    Q.enqueue(s)
    var l: Int = 0
    while !Q.isEmpty {
        var len = Q.count
        for i in 0..<len {
            guard var x = Q.dequeue() else { return 0 }
            if x == e { return l }
            for j in 0..<3 {
                var nx = x + dis[j]
                if nx >= 1 && nx <= 10000 && ch[nx] == 0 {
                    ch[nx] = 1
                    Q.enqueue(nx)
                }
            }
        }
        l += 1
    }
    return 0
}

for i in 0...10000 {
    ch.append(0)
}
print(BFS(s: 5, e: 14))


//: [Next](@next)
