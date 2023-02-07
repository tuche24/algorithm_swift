//: [Previous](@previous)

//:# 이진트리 레벨탐색(BFS: Breath-First Search)

import Foundation

class Node {
    var nodeData: Int?
    var lt: Node?
    var rt: Node?
    
    init(value: Int) {
        nodeData = value
        lt = nil
        rt = nil
    }
}

var tree: Node = Node(value: 1)
tree.lt = Node(value: 2)
tree.rt = Node(value: 3)
tree.lt?.lt = Node(value: 4)
tree.lt?.rt = Node(value: 5)
tree.rt?.lt = Node(value: 6)
tree.rt?.rt = Node(value: 7)

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

func BFS(root: Node) {
    var Q = Queue<Node>()
    Q.enqueue(root)
    var L = 0
    while !Q.isEmpty {
        let len = Q.count
        print("Level : ", terminator: " ")
        for _ in 0..<len {
            if let cur = Q.dequeue() {
                print("\(cur.nodeData!) ", terminator: " ")
                if let lt = cur.lt {
                    Q.enqueue(lt)
                }
                if let rt = cur.rt {
                    Q.enqueue(rt)
                }
            }
        }
        L += 1
        print()
    }
}

BFS(root: tree)

//: [Next](@next)
