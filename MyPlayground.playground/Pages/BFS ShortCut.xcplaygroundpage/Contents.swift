//: [Previous](@previous)

//:# Tree 말단노드까지 가장 짧은 거리

import Foundation

class Node {
    var data: Int?
    var lt: Node?
    var rt: Node?
    
    init(_ data: Int?) {
        self.data = data
    }
}

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

var tree = Node(1)
tree.lt = Node(2)
tree.rt = Node(3)
tree.lt?.lt = Node(4)
tree.lt?.rt = Node(5)

func BFS() -> Int {
    var queue = Queue<Node>()
    queue.enqueue(tree)
    var l: Int = 0
    while !queue.isEmpty {
        var len = queue.count
        for _ in 0..<len {
            guard var cur = queue.dequeue() else { return 0 }
            if cur.lt == nil && cur.rt == nil { return l }
            if let lt = cur.lt { queue.enqueue(lt) }
            if let rt = cur.rt { queue.enqueue(rt) }
        }
        l += 1
    }
    return 0
}

BFS()

//: [Next](@next)
